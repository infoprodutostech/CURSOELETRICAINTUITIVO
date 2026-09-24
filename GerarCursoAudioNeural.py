import asyncio
import re
from pathlib import Path

import edge_tts

ROOT = Path(__file__).parent
SOURCE = ROOT / "GerarCursoAudio.ps1"
OUTPUT = ROOT / "AudioTreinamentoEntrevistaNeural"
VOICE = "pt-BR-FranciscaNeural"


def load_lessons():
    source = SOURCE.read_text(encoding="utf-8")
    pattern = re.compile(
        r"File = '([^']+?)\.wav'.*?Title = '([^']+)'.*?Text = @'\n(.*?)\n'@",
        re.DOTALL,
    )
    lessons = pattern.findall(source)
    if len(lessons) != 6:
        raise RuntimeError(f"Esperadas 6 aulas, encontradas {len(lessons)}")
    return lessons


async def create_audio(filename, title, text):
    output_file = OUTPUT / Path(filename).with_suffix(".mp3").name
    communication = edge_tts.Communicate(
        f"{title}.\n\n{text}", VOICE, rate="-8%", volume="+0%", pitch="+0Hz"
    )
    await communication.save(str(output_file))
    print(output_file)


async def main():
    OUTPUT.mkdir(exist_ok=True)
    for filename, title, text in load_lessons():
        print(f"Gerando {filename}.mp3...")
        await create_audio(filename, title, text)
    print(f"Curso neural criado em: {OUTPUT}")


if __name__ == "__main__":
    asyncio.run(main())