Add-Type -AssemblyName System.Speech

$outputDirectory = Join-Path $PSScriptRoot 'AudioTreinamentoEntrevista'
New-Item -ItemType Directory -Path $outputDirectory -Force | Out-Null

$lessons = @(
    [pscustomobject]@{
        File = '01-narrativa-e-estrategia.wav'
        Title = 'Aula um. Narrativa e estratégia de entrevista.'
        Text = @'
Bem-vindo ao treinamento para a entrevista de engenheiro eletricista.

O objetivo deste curso não é fazer você fingir que já tem uma experiência que não teve. O objetivo é organizar a experiência que você já possui, recuperar os fundamentos e mostrar que você pensa como engenheiro.

Sua apresentação deve ser honesta. Você é engenheiro eletricista formado há dois anos, com formação técnica em mecânica e experiência em ambiente industrial, manutenção, confiabilidade, gestão de ativos, análise de falhas, indicadores e interface com equipes técnicas.

Uma boa apresentação seria: Sou engenheiro eletricista formado há dois anos e também tenho formação técnica em mecânica. Minha experiência profissional foi construída em ambiente industrial, com manutenção, confiabilidade, gestão de ativos, análise de falhas, indicadores e interface com equipes técnicas. Na Vale, atuei próximo de engenheiros especialistas e em atividades de engenharia e manutenção, o que me deu contato com problemas reais, documentação, priorização e tomada de decisão técnica. Depois, também trabalhei com engenharia de facilities e manutenção. Estou buscando minha primeira posição formal como engenheiro eletricista porque quero aplicar essa base em projetos e soluções elétricas, evoluindo com método, normas, campo e revisão dos profissionais mais experientes.

Não diga que esqueceu tudo. Diga que está revisando fundamentos para transformar sua experiência prática em atuação formal de engenharia.

Quando não souber uma resposta, siga quatro passos. Primeiro, reconheça o limite sem se desvalorizar. Segundo, explique o fundamento que você conhece. Terceiro, explique quais dados, normas e cálculos usaria. Quarto, diga como validaria a solução com um profissional responsável.

Uma frase útil é: Não quero afirmar uma experiência que ainda não tive diretamente. Posso explicar o fundamento e o método que usaria. Eu levantaria os dados, consultaria os requisitos aplicáveis, faria os cálculos, documentaria as premissas e submeteria a solução à revisão competente.

Sua experiência na Vale deve ser apresentada como experiência industrial e de engenharia de ativos. Fale sobre manutenção, confiabilidade, análise de falhas, organização de ativos, priorização e contato com engenheiros especialistas. Não diga que projetou sozinho um sistema elétrico se isso não aconteceu.

A mensagem central é simples: você não começa do zero. Você está fazendo a transição para a engenharia formal e já conhece ambiente industrial, segurança, problemas reais, documentação e trabalho multidisciplinar.
'@
    },
    [pscustomobject]@{
        File = '02-fundamentos-eletricos.wav'
        Title = 'Aula dois. Fundamentos elétricos.'
        Text = @'
Nesta aula, vamos revisar o básico.

Tensão é a diferença de potencial que impulsiona a corrente. Corrente é o fluxo de carga elétrica. Resistência é a oposição à corrente. A Lei de Ohm é tensão igual a resistência multiplicada pela corrente.

Potência ativa é a parcela convertida em trabalho, calor ou luz. Potência reativa é a energia associada aos campos elétricos e magnéticos. Potência aparente combina as duas e é normalmente expressa em volt-ampere. O fator de potência é a relação entre potência ativa e potência aparente.

Em corrente contínua, a polaridade é fixa. Em corrente alternada, tensão e corrente variam no tempo. Em um sistema trifásico, existem três tensões defasadas de cento e vinte graus. Isso permite transportar potência com eficiência e alimentar motores industriais.

Para uma carga trifásica equilibrada, a potência ativa é igual à raiz quadrada de três, multiplicada pela tensão entre fases, pela corrente e pelo fator de potência.

Para estimar a corrente de um motor, divida a potência em watts pela raiz quadrada de três, pela tensão entre fases, pelo fator de potência e pelo rendimento do motor.

Não confunda tensão fase-neutro com tensão fase-fase. Em uma ligação equilibrada em estrela, a tensão entre fases é a raiz quadrada de três vezes a tensão fase-neutro.

Em um circuito em série, a corrente é a mesma e a tensão se distribui. Em paralelo, a tensão é a mesma e as correntes se dividem. Um curto-circuito ocorre quando existe uma impedância muito baixa entre pontos de potenciais diferentes. A corrente pode ficar muito acima da nominal e precisa ser interrompida rapidamente.

Potência instalada é a soma das potências das cargas. Demanda é a potência efetivamente considerada para operação simultânea. Não se deve escolher um cabo apenas somando placas sem analisar simultaneidade, regime, partida e expansão.

A sequência mental para um problema elétrico é: identificar a carga, entender tensão e alimentação, levantar condições reais, avaliar riscos, escolher uma solução e comprovar com cálculo, norma, inspeção e documentação.
'@
    },
    [pscustomobject]@{
        File = '03-projeto-e-calculos.wav'
        Title = 'Aula três. Projeto, cabos, proteção e cálculos.'
        Text = @'
Nesta aula, vamos entender como responder perguntas de projeto.

Antes de escolher um cabo ou disjuntor, levante equipamento, função, potência, tensão, fases, frequência, fator de potência, rendimento, regime de operação, simultaneidade, corrente de partida, criticidade, ambiente, método de instalação e distância.

O dimensionamento do condutor precisa verificar capacidade de condução de corrente, queda de tensão, suportabilidade ao curto-circuito, seção mínima, coordenação com a proteção, temperatura, agrupamento, ambiente, neutro e condutor de proteção.

A relação conceitual é: a corrente de projeto deve ser menor ou igual à corrente nominal da proteção, que deve ser menor ou igual à capacidade corrigida de condução do cabo. Em símbolos: I B menor ou igual a I N, menor ou igual a I Z.

Queda de tensão excessiva pode causar subtensão, aquecimento, perda de torque em motores e mau funcionamento de equipamentos. Para um circuito trifásico, a queda depende do comprimento, corrente, resistência, reatância e fator de potência. O limite deve vir da norma ou do critério do empreendimento. Não invente um limite quando a pergunta não informar a referência.

O estudo de curto-circuito verifica a capacidade de interrupção dos disjuntores, os esforços em barramentos e cabos, a atuação das proteções e a segurança contra arco elétrico. De forma simplificada, a corrente de curto é a tensão dividida pela impedância equivalente. Quanto menor a impedância até a fonte, maior a corrente de curto.

Sobrecarga é uma corrente acima da condição normal por tempo suficiente para aquecer o circuito. Curto-circuito é uma falha de baixa impedância e normalmente muito mais intensa.

Seletividade significa fazer com que a proteção mais próxima da falha atue primeiro, preservando as partes saudáveis do sistema. Para analisar isso, observe curvas tempo-corrente, corrente de curto mínima e máxima, ajustes de proteção, capacidade de interrupção e continuidade desejada.

Uma resposta pronta para dimensionamento é: eu levantaria a demanda e a corrente de projeto, escolheria o método de instalação, aplicaria os fatores de correção, verificaria queda de tensão, curto-circuito, proteção, neutro e terra, registraria as premissas e encaminharia para revisão.
'@
    },
    [pscustomobject]@{
        File = '04-sistemas-e-seguranca.wav'
        Title = 'Aula quatro. Sistemas, aterramento e segurança.'
        Text = @'
Um diagrama unifilar representa de forma simplificada a entrada de energia, medição, transformadores, barramentos, alimentadores, cargas, seccionamento, proteção e aterramento.

Ao ler um unifilar, siga o caminho da energia. Pergunte de onde vem a alimentação, onde estão os pontos de seccionamento, qual proteção protege cada trecho, qual tensão existe em cada nível, como neutro e proteção estão tratados e se existem geradores, fontes alternativas ou intertravamentos.

Transformadores transferem energia entre níveis de tensão por indução eletromagnética. A potência é normalmente informada em k V A. Se a tensão diminui, a corrente para a mesma potência aumenta. Observe potência, relação de transformação, impedância percentual, grupo vetorial, taps, resfriamento, aterramento e proteção.

Motores de indução trifásicos são comuns na indústria. Na partida, a corrente pode ser várias vezes a corrente nominal. A escolha entre partida direta, estrela-triângulo, soft starter e inversor de frequência depende da potência, torque, rede e processo. Proteções podem incluir curto-circuito, sobrecarga, falta de fase, sequência de fase, temperatura e fuga à terra.

Aterramento não é simplesmente colocar um cabo na terra. Ele ajuda na segurança, na referência de potencial, no escoamento de correntes de falta, na equipotencialização e na atuação das proteções.

PE é o condutor de proteção. N é o neutro de serviço. PEN combina as funções de proteção e neutro quando o esquema permite. Equipotencialização é a união intencional de massas e elementos condutivos para reduzir diferenças perigosas de potencial. Não una neutro e proteção em qualquer ponto; isso depende do esquema e do projeto.

O SPDA protege contra efeitos de descargas atmosféricas por captação, descidas, aterramento, equipotencialização e proteção contra surtos. Ele não impede o raio. Reduz danos e riscos. Uma haste isolada não resolve automaticamente todo o sistema.

Na NR dez, segurança vem antes da pressa. Pense em desenergização, seccionamento, impedimento de reenergização, constatação de ausência de tensão, aterramento temporário quando necessário, proteção de partes próximas, sinalização, EPI, EPC, autorização e análise de risco.

Antes de energizar um painel, verifique projeto, aperto, identificação, isolação, continuidade do condutor de proteção, sequência de fases, ajustes, intertravamentos, barreiras, limpeza, documentação e autorização formal.
'@
    },
    [pscustomobject]@{
        File = '05-entrevista-tecnica.wav'
        Title = 'Aula cinco. Perguntas técnicas e comportamentais.'
        Text = @'
Agora vamos treinar respostas de entrevista.

Se perguntarem a diferença entre disjuntor e fusível, responda: ambos interrompem correntes de falha. O disjuntor pode ser rearmado e ter ajustes e acessórios. O fusível atua pela fusão de um elemento e precisa ser substituído. A escolha depende de corrente, curto-circuito, seletividade, manutenção, custo e aplicação.

Se perguntarem o que é fator de potência, diga: é a relação entre potência ativa e potência aparente. Um fator baixo exige mais corrente para a mesma potência útil, aumentando perdas e ocupação da rede. A correção precisa ser estudada para evitar sobretensão e ressonância.

Se perguntarem o que acontece quando falta uma fase em um motor, diga: pode haver aumento de corrente nas fases restantes, aquecimento, perda de torque e dano. A proteção deve detectar a condição conforme a aplicação. Não se deve simplesmente aumentar o ajuste para evitar desarmes.

Se perguntarem se você sabe AutoCAD ou Revit, responda com honestidade: minha experiência principal não foi como projetista dedicado nessas ferramentas. Tenho capacidade de interpretar documentação e entender critérios de engenharia, mas reconheço que preciso desenvolver a execução nos softwares. Estou disposto a aprender e a trabalhar inicialmente com revisão e orientação.

Se perguntarem se você já foi responsável técnico, diga: não. Minha experiência foi de apoio e atuação técnica em ambiente industrial e de manutenção. Não vou atribuir a mim uma responsabilidade que não exerci. Quero evoluir com supervisão adequada, domínio dos critérios e respeito às exigências legais.

Se perguntarem qual é seu principal ponto de desenvolvimento, diga: minha principal lacuna é não ter acumulado experiência formal em projeto elétrico. Estou tratando isso com revisão estruturada de fundamentos, estudo das normas aplicáveis e prática de leitura de diagramas e memoriais. Em compensação, conheço ambiente industrial, segurança, manutenção, priorização e análise de problemas reais.

Se perguntarem por que devem escolher você, diga: trago uma combinação de formação elétrica, experiência industrial, visão de manutenção e confiabilidade, capacidade analítica e facilidade de interface com especialistas. Sei onde preciso evoluir e tenho maturidade para perguntar, validar e documentar antes de liberar uma solução.

Se perguntarem como você reage quando não sabe, diga: separo o que sei do que preciso verificar. Levanto dados, consulto norma e documentação, busco o especialista adequado, calculo e registro as premissas. Prefiro uma resposta tecnicamente verificável a uma resposta rápida e insegura.

Faça também perguntas à empresa: qual é a proporção entre projeto, campo e acompanhamento de execução? A posição exige ART desde o início? Quais níveis de tensão aparecem? Quais softwares são usados? Há revisão por engenheiro sênior? Como são tratados comissionamento, as built e alterações de campo?
'@
    },
    [pscustomobject]@{
        File = '06-revisao-e-simulacao.wav'
        Title = 'Aula seis. Revisão final e simulação.'
        Text = @'
Esta é a revisão final.

Prepare três histórias reais no formato contexto, ação, resultado e aprendizado.

Na primeira, conte uma situação da Vale envolvendo manutenção, confiabilidade, engenharia de ativos, análise de falhas ou contato com engenheiros especialistas.

Na segunda, conte uma análise de falha ou melhoria. Explique o problema, os dados usados, as hipóteses, a causa, a ação corretiva e como mediu o resultado.

Na terceira, conte uma situação de facilities ou manutenção em que você precisou lidar com ativo real, disponibilidade, inspeção, operação, documentação ou execução.

Use números verdadeiros quando tiver. Não invente percentual de redução, quantidade de ativos ou resultado.

Faça uma revisão em quatro dias. No primeiro dia, estude sua apresentação, Lei de Ohm, potência, fator de potência, curto e segurança. No segundo, revise cargas, demanda, cabos, proteção, queda de tensão, unifilares, quadros e transformadores. No terceiro, revise motores, partida, painéis, aterramento, SPDA, seletividade e documentação. No quarto, simule a entrevista em voz alta.

Na véspera, faça apenas revisão leve. Separe currículo, recomendação se houver, documentos, endereço, horário e perguntas para a empresa. Não tente aprender uma norma inteira durante a madrugada.

Quando travar em uma pergunta técnica, use este resumo: carga, corrente, cabo, proteção, curto, queda de tensão, aterramento, segurança, documentação e revisão.

E use esta sequência para qualquer resposta: dados, premissas, norma, cálculo, validação e registro.

Para encerrar a entrevista, você pode dizer: eu sei que estou fazendo uma transição para a engenharia elétrica formal e tenho clareza sobre os pontos que preciso desenvolver. Ao mesmo tempo, não começo do zero. Já vivi ambiente industrial, manutenção, ativos, análise de falhas, indicadores, segurança e interface com especialistas. Quero aplicar essa base em projetos elétricos com responsabilidade, aprender os padrões da empresa e entregar soluções bem verificadas e documentadas.

Você não precisa saber tudo para ser aprovado. Precisa demonstrar honestidade, raciocínio, responsabilidade e capacidade de aprender sem colocar a segurança em risco.
'@
    }
)

foreach ($lesson in $lessons) {
    $synthesizer = New-Object System.Speech.Synthesis.SpeechSynthesizer
    $synthesizer.SelectVoice('Microsoft Maria Desktop')
    $synthesizer.Rate = -1
    $synthesizer.Volume = 100
    $outputPath = Join-Path $outputDirectory $lesson.File
    $synthesizer.SetOutputToWaveFile($outputPath)
    $synthesizer.Speak($lesson.Title)
    $synthesizer.Speak($lesson.Text)
    $synthesizer.Dispose()
    Write-Output $outputPath
}

Write-Output "Curso criado em: $outputDirectory"