from pathlib import Path
import html
import re
import tempfile

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
from matplotlib import font_manager
from reportlab.lib import colors
from reportlab.lib.enums import TA_CENTER, TA_LEFT
from reportlab.lib.pagesizes import A4
from reportlab.lib.styles import ParagraphStyle, getSampleStyleSheet
from reportlab.lib.units import cm
from reportlab.pdfbase import pdfmetrics
from reportlab.pdfbase.ttfonts import TTFont
from reportlab.platypus import (
    BaseDocTemplate,
    Flowable,
    Frame,
    HRFlowable,
    Image,
    KeepTogether,
    PageTemplate,
    Paragraph,
    PageBreak,
    Spacer,
)

ROOT = Path(__file__).parent
SOURCE = ROOT / "MaterialEstudoEngenhariaEletrica.md"
OUTPUT = ROOT / "MaterialEstudoEngenhariaEletrica.pdf"
TEMP = Path(tempfile.mkdtemp(prefix="formulas-"))

font_path = font_manager.findfont("DejaVu Sans")
pdfmetrics.registerFont(TTFont("DejaVuSans", font_path))
bold_font_path = font_manager.findfont(font_manager.FontProperties(family="DejaVu Sans", weight="bold"))
pdfmetrics.registerFont(TTFont("DejaVuSans-Bold", bold_font_path))

styles = getSampleStyleSheet()
styles.add(ParagraphStyle(
    name="BookTitle", parent=styles["Title"], fontName="DejaVuSans-Bold",
    fontSize=21, leading=26, alignment=TA_CENTER, textColor=colors.HexColor("#16324F"),
    spaceAfter=16,
))
styles.add(ParagraphStyle(
    name="BookSubtitle", parent=styles["Normal"], fontName="DejaVuSans",
    fontSize=9, leading=13, alignment=TA_CENTER, textColor=colors.HexColor("#52606D"),
    spaceAfter=18,
))
styles.add(ParagraphStyle(
    name="H1Book", parent=styles["Heading1"], fontName="DejaVuSans-Bold",
    fontSize=15, leading=19, textColor=colors.HexColor("#16324F"),
    spaceBefore=14, spaceAfter=8, keepWithNext=True,
))
styles.add(ParagraphStyle(
    name="H2Book", parent=styles["Heading2"], fontName="DejaVuSans-Bold",
    fontSize=11.5, leading=15, textColor=colors.HexColor("#28536B"),
    spaceBefore=9, spaceAfter=5, keepWithNext=True,
))
styles.add(ParagraphStyle(
    name="H3Book", parent=styles["Heading3"], fontName="DejaVuSans-Bold",
    fontSize=10, leading=13, textColor=colors.HexColor("#3D6575"),
    spaceBefore=7, spaceAfter=3, keepWithNext=True,
))
styles.add(ParagraphStyle(
    name="BodyBook", parent=styles["BodyText"], fontName="DejaVuSans",
    fontSize=8.6, leading=12.2, alignment=TA_LEFT, spaceAfter=5,
))
styles.add(ParagraphStyle(
    name="BulletBook", parent=styles["BodyText"], fontName="DejaVuSans",
    fontSize=8.5, leading=11.8, leftIndent=13, firstLineIndent=-8, spaceAfter=3,
))
styles.add(ParagraphStyle(
    name="QuoteBook", parent=styles["BodyText"], fontName="DejaVuSans",
    fontSize=8.4, leading=12, leftIndent=15, rightIndent=10,
    borderColor=colors.HexColor("#8AA5B5"), borderWidth=0.6, borderPadding=7,
    backColor=colors.HexColor("#F1F6F8"), spaceBefore=4, spaceAfter=7,
))
styles.add(ParagraphStyle(
    name="MetaBook", parent=styles["BodyText"], fontName="DejaVuSans",
    fontSize=8.7, leading=13, alignment=TA_CENTER, textColor=colors.HexColor("#52606D"),
))


def escape_text(value):
    return html.escape(value, quote=False)


def inline_markup(value):
    value = escape_text(value)
    value = re.sub(r"\*\*(.+?)\*\*", r"<b>\1</b>", value)
    value = re.sub(r"`(.+?)`", r"<font name='DejaVuSans'>\1</font>", value)
    value = re.sub(r"\*(.+?)\*", r"<i>\1</i>", value)
    value = re.sub(r"(?<!\$)\$(?!\$)(.+?)(?<!\$)\$(?!\$)", r"<i>\1</i>", value)
    return value


def formula_image(formula, index):
    formula = formula.strip()
    if formula.startswith("$") and formula.endswith("$"):
        formula = formula.strip("$")
    path = TEMP / f"formula-{index}.png"
    fig = plt.figure(figsize=(7.2, 0.65), dpi=220)
    fig.patch.set_alpha(0)
    fig.text(0.5, 0.5, f"${formula}$", ha="center", va="center", fontsize=16, color="#182B3A")
    fig.savefig(path, transparent=True, bbox_inches="tight", pad_inches=0.08)
    plt.close(fig)
    return str(path)


def formula_flowable(formula, index):
    image = Image(formula_image(formula, index))
    image.hAlign = "CENTER"
    image._restrictSize(16 * cm, 1.25 * cm)
    return KeepTogether([Spacer(1, 3), image, Spacer(1, 5)])


def footer(canvas, doc):
    canvas.saveState()
    canvas.setStrokeColor(colors.HexColor("#D7E1E6"))
    canvas.line(1.7 * cm, 1.35 * cm, 19.3 * cm, 1.35 * cm)
    canvas.setFont("DejaVuSans", 7.5)
    canvas.setFillColor(colors.HexColor("#687780"))
    canvas.drawString(1.7 * cm, 0.9 * cm, "Material de estudo - Entrevista para Engenheiro Eletricista")
    canvas.drawRightString(19.3 * cm, 0.9 * cm, f"{doc.page}")
    canvas.restoreState()


def build_story():
    lines = SOURCE.read_text(encoding="utf-8").splitlines()
    story = []
    formula_index = 0
    first_title = True
    index = 0
    while index < len(lines):
        line = lines[index].strip()
        if not line:
            story.append(Spacer(1, 3))
            index += 1
            continue
        if line.startswith("$$"):
            formula = line[2:-2].strip() if line.endswith("$$") else line[2:].strip()
            if not line.endswith("$$"):
                parts = []
                while index < len(lines):
                    part = lines[index].strip()
                    parts.append(part)
                    if part.endswith("$$"):
                        break
                    index += 1
                formula = " ".join(parts).strip("$")
            story.append(formula_flowable(formula, formula_index))
            formula_index += 1
            index += 1
            continue
        heading = re.match(r"^(#{1,3})\s+(.+)$", line)
        if heading:
            level = len(heading.group(1))
            text = inline_markup(heading.group(2))
            style = {1: styles["H1Book"], 2: styles["H2Book"], 3: styles["H3Book"]}[level]
            if first_title and level == 1:
                story.append(Paragraph(text, styles["BookTitle"]))
                story.append(HRFlowable(width="55%", thickness=1.2, color=colors.HexColor("#5B8FA3"), hAlign="CENTER"))
                story.append(Spacer(1, 8))
                first_title = False
            else:
                story.append(Paragraph(text, style))
            index += 1
            continue
        if line.startswith(">"):
            quote_lines = [line[1:].strip()]
            index += 1
            while index < len(lines) and lines[index].strip().startswith(">"):
                quote_lines.append(lines[index].strip()[1:].strip())
                index += 1
            story.append(Paragraph("<br/>".join(inline_markup(x) for x in quote_lines), styles["QuoteBook"]))
            continue
        if re.match(r"^[-*]\s+", line):
            text = re.sub(r"^[-*]\s+", "", line)
            story.append(Paragraph("&#8226; " + inline_markup(text), styles["BulletBook"]))
            index += 1
            continue
        if re.match(r"^\d+\.\s+", line):
            story.append(Paragraph(inline_markup(line), styles["BulletBook"]))
            index += 1
            continue
        if line == "---":
            story.append(HRFlowable(width="100%", thickness=0.5, color=colors.HexColor("#D7E1E6")))
            index += 1
            continue
        if line.startswith("**") and line.endswith("**"):
            story.append(Paragraph(inline_markup(line), styles["MetaBook"]))
            index += 1
            continue
        story.append(Paragraph(inline_markup(line), styles["BodyBook"]))
        index += 1
    return story


def main():
    frame = Frame(1.7 * cm, 1.7 * cm, 17.6 * cm, 26 * cm, id="normal", leftPadding=0, rightPadding=0, topPadding=0, bottomPadding=0)
    document = BaseDocTemplate(str(OUTPUT), pagesize=A4, leftMargin=1.7 * cm, rightMargin=1.7 * cm,
                               topMargin=1.6 * cm, bottomMargin=1.7 * cm, title="Material de estudo - Engenharia Elétrica",
                               author="Marcello Wellington Ribeiro de Almeida")
    document.addPageTemplates([PageTemplate(id="book", frames=[frame], onPage=footer)])
    document.build(build_story())
    print(OUTPUT)


if __name__ == "__main__":
    main()
