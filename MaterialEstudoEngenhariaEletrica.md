# Material de estudo - Entrevista para Engenheiro Eletricista

**Candidato:** Marcello Wellington Ribeiro de Almeida  
**Entrevista:** 28/09/2026  
**Uso:** material escrito para acompanhar o curso em áudio e revisar os fundamentos necessários para a entrevista.

> Este material é para preparação e revisão. Não substitui normas, procedimentos da empresa, projeto assinado ou orientação de profissional habilitado.

## Como estudar este material

Não tente decorar todas as fórmulas. Para cada assunto, consiga responder quatro perguntas:

1. O que é?
2. Por que isso importa em uma instalação industrial?
3. Quais dados preciso levantar?
4. Como verifico se a solução está segura?

A sequência geral de um problema elétrico é:

**carga -> corrente -> condutor -> proteção -> curto-circuito -> queda de tensão -> aterramento -> segurança -> documentação -> revisão.**

## 1. Sua estratégia para a entrevista

### 1.1 O que você deve comunicar

Você é engenheiro eletricista formado há dois anos, com experiência em ambiente industrial, manutenção, confiabilidade, gestão de ativos, análise de falhas, indicadores e interface com especialistas. Você está buscando a primeira posição formal como engenheiro eletricista.

Sua vantagem não é afirmar domínio de todas as ferramentas de projeto. Sua vantagem é já ter convivido com equipamentos reais, falhas reais, manutenção, segurança, documentação, prioridades e equipes técnicas.

### 1.2 Apresentação de 60 segundos

> Sou engenheiro eletricista formado há dois anos e também tenho formação técnica em mecânica. Minha experiência profissional foi construída em ambiente industrial, com manutenção, confiabilidade, gestão de ativos, análise de falhas, indicadores e interface com equipes técnicas. Na Vale, atuei próximo de engenheiros especialistas e em atividades de engenharia e manutenção, o que me deu contato com problemas reais, documentação, priorização e tomada de decisão técnica. Também trabalhei com engenharia de facilities e manutenção. Estou buscando minha primeira posição formal como engenheiro eletricista para aplicar essa base em projetos e soluções elétricas, evoluindo com método, normas, campo e revisão dos profissionais mais experientes.

### 1.3 Como responder quando não souber

Use quatro movimentos:

1. **Limite:** "Não executei essa atividade sozinho em um projeto formal."
2. **Fundamento:** explique o princípio que conhece.
3. **Método:** diga quais dados e verificações faria.
4. **Responsabilidade:** explique como validaria a solução antes da liberação.

Exemplo:

> Não dimensionei sozinho uma subestação de média tensão. Eu começaria levantando cargas, tensão, demanda, curto-circuito disponível, método de instalação, expansão e requisitos da concessionária. Depois verificaria cabos, proteção, aterramento, seletividade e documentação, submetendo o resultado à revisão do responsável técnico.

Evite dizer "esqueci tudo". Prefira: **"Estou revisando os fundamentos para transformar minha experiência prática em atuação formal de engenharia."**

## 2. Grandezas elétricas essenciais

### 2.1 Tensão, corrente e resistência

Uma analogia útil é pensar em um sistema hidráulico:

- tensão é semelhante à pressão que impulsiona o fluido;
- corrente é semelhante à vazão;
- resistência é a restrição ao fluxo.

A analogia ajuda no início, mas não substitui o conceito físico.

- **Tensão, V:** diferença de potencial entre dois pontos.
- **Corrente, A:** movimento ordenado de cargas elétricas.
- **Resistência, ohm:** oposição à passagem de corrente.

A Lei de Ohm relaciona essas grandezas:

$$V = R I$$

Portanto:

$$I = \frac{V}{R}$$

Para a mesma tensão, uma resistência menor permite uma corrente maior. Essa é uma das razões pelas quais um curto-circuito é perigoso.

### 2.2 Potência ativa, reativa e aparente

- **Potência ativa, W ou kW:** realiza trabalho, produz calor, luz ou movimento.
- **Potência reativa, var ou kvar:** fica associada aos campos magnéticos e elétricos de equipamentos como motores e transformadores.
- **Potência aparente, VA ou kVA:** capacidade total exigida da fonte, dos cabos e dos transformadores.

Em corrente contínua ou carga puramente resistiva:

$$P = V I$$

Em corrente alternada, o fator de potência relaciona potência ativa e aparente:

$$FP = \frac{P}{S}$$

Quanto menor o fator de potência, maior tende a ser a corrente necessária para entregar a mesma potência ativa. Isso aumenta perdas e ocupa mais capacidade da instalação.

### 2.3 Sistema trifásico

Um sistema trifásico possui três tensões defasadas de 120 graus. Ele é muito usado na indústria porque transmite potência de forma eficiente e produz campo magnético adequado para motores.

Para uma carga trifásica equilibrada:

$$P = \sqrt{3} V_{LL} I \cos\varphi$$

Para encontrar a corrente de um motor, considerando rendimento:

$$I = \frac{P}{\sqrt{3} V_{LL} FP \eta}$$

Onde:

- $P$ é a potência mecânica em watts;
- $V_{LL}$ é a tensão entre fases;
- $FP$ é o fator de potência;
- $\eta$ é o rendimento.

### Exemplo 1 - corrente de um motor

Motor de 30 kW, 380 V, fator de potência 0,86 e rendimento 0,92:

$$I = \frac{30000}{\sqrt{3} \cdot 380 \cdot 0,86 \cdot 0,92}$$

$$I \approx 57\ A$$

Esse é apenas o ponto de partida. Ainda é preciso verificar corrente de partida, cabo, método de instalação, proteção, curto-circuito e ambiente.

## 3. Circuitos e alimentação

### 3.1 Série e paralelo

Em série, a corrente é a mesma em todos os elementos e a tensão se divide. Em paralelo, a tensão é a mesma nos ramos e a corrente se divide.

Instalações industriais são predominantemente combinações de circuitos em paralelo: vários alimentadores e cargas recebem tensão de um mesmo barramento.

### 3.2 Monofásico e trifásico

Não confunda:

- tensão fase-neutro;
- tensão fase-fase;
- tensão nominal do equipamento;
- tensão do sistema de distribuição.

Em uma ligação equilibrada em estrela:

$$V_{LL} = \sqrt{3} V_{FN}$$

Sempre confirme no diagrama, na placa do equipamento e na documentação. Não deduza a tensão apenas pela cor dos condutores.

### 3.3 Potência instalada e demanda

**Potência instalada** é a soma das potências nominais das cargas. **Demanda** é a parcela efetivamente considerada para operação simultânea, conforme o processo e o critério de projeto.

Se dez motores existem na instalação, isso não significa necessariamente que os dez operam na potência máxima ao mesmo tempo. Porém, a redução de demanda precisa ser justificada pelo processo, não escolhida para diminuir artificialmente o cabo ou o transformador.

## 4. Levantamento de cargas

Antes de calcular, faça o levantamento. Para cada carga, registre:

- identificação e função;
- potência nominal;
- tensão e número de fases;
- corrente de placa;
- fator de potência e rendimento;
- regime de operação;
- simultaneidade;
- corrente de partida;
- distância até o quadro;
- método de instalação;
- temperatura e agrupamento;
- criticidade e necessidade de reserva;
- possibilidade de expansão.

Uma lista de cargas bem feita é a base do dimensionamento. Um cálculo elegante usando dados errados continua errado.

## 5. Condutores e cabos

### 5.1 O que um cabo precisa suportar

O cabo deve conduzir a corrente sem aquecer além do limite permitido, manter uma queda de tensão aceitável e suportar a condição de curto-circuito pelo tempo necessário para a proteção atuar.

Verificações mínimas:

1. capacidade de condução de corrente;
2. fatores de correção por temperatura e agrupamento;
3. queda de tensão;
4. suportabilidade térmica ao curto-circuito;
5. seção mínima normativa;
6. coordenação com o dispositivo de proteção;
7. neutro e condutor de proteção;
8. ambiente, umidade, agentes químicos e esforço mecânico.

### 5.2 Relação entre corrente e proteção

Uma relação conceitual importante é:

$$I_B \leq I_N \leq I_Z$$

- $I_B$: corrente de projeto;
- $I_N$: corrente nominal ou ajuste da proteção;
- $I_Z$: capacidade corrigida de condução do cabo.

Essa relação não resolve todo o dimensionamento, mas mostra a lógica: a proteção deve permitir a operação normal e proteger o condutor.

### 5.3 Queda de tensão

A queda de tensão aumenta com comprimento e corrente. Também depende da resistência, da reatância e do fator de potência.

Para uma aproximação monofásica resistiva:

$$\Delta V \approx 2 L I R$$

Para um circuito trifásico:

$$\Delta V \approx \sqrt{3} L I (R\cos\varphi + X\sin\varphi)$$

Queda excessiva pode causar iluminação fraca, falha de contatores, perda de torque e aquecimento. O limite precisa ser conferido na norma e nos requisitos do cliente.

### Exemplo 2 - raciocínio de seleção

Se a corrente de projeto é 42 A, não é correto escolher automaticamente um disjuntor de 50 A e um cabo qualquer. É necessário perguntar:

- qual é a capacidade corrigida do cabo?
- o método de instalação permite essa corrente?
- a queda de tensão está aceitável?
- a corrente de partida causa desarme?
- o disjuntor suporta o curto-circuito disponível?
- existe seletividade com a proteção a montante?

## 6. Proteções elétricas

### 6.1 Sobrecarga e curto-circuito

**Sobrecarga** é uma corrente acima da capacidade normal durante um período. Ela aquece o condutor e o equipamento.

**Curto-circuito** é uma falha de baixa impedância entre pontos de potenciais diferentes. A corrente pode subir muito rapidamente.

As proteções precisam detectar e interromper essas condições sem atuar desnecessariamente durante a operação normal.

### 6.2 Disjuntor e fusível

Disjuntor e fusível podem interromper correntes de falha, mas possuem características diferentes.

- disjuntor pode ser rearmado e ter ajustes, bobinas e acessórios;
- fusível atua pela fusão de um elemento e precisa ser substituído;
- ambos devem ter capacidade de interrupção compatível com o curto-circuito disponível;
- a escolha depende de aplicação, seletividade, manutenção, custo e continuidade.

### 6.3 Seletividade

Seletividade significa que, em uma falha, a proteção mais próxima do ponto de defeito deve atuar primeiro, mantendo o restante da instalação energizado.

Para avaliar seletividade, analise curvas tempo-corrente, ajustes, correntes de curto mínima e máxima, características dos dispositivos e tabelas do fabricante. Não declare seletividade apenas porque um disjuntor tem corrente nominal menor.

### 6.4 Coordenação

Coordenação é a operação conjunta prevista entre equipamentos e proteções. Ela considera cabos, motores, transformadores, contatores, relés e disjuntores.

Uma proteção mal ajustada pode:

- desarmar durante a partida;
- não proteger o cabo;
- deixar passar energia excessiva em uma falha;
- desligar uma área inteira quando apenas um circuito deveria parar.

## 7. Curto-circuito

O estudo de curto-circuito verifica:

- capacidade de interrupção dos disjuntores;
- esforços térmicos e eletrodinâmicos em barramentos;
- suportabilidade de cabos e equipamentos;
- ajustes e atuação das proteções;
- seletividade;
- risco de arco elétrico.

De forma simplificada:

$$I_{cc} \approx \frac{V}{Z_{eq}}$$

Quanto menor a impedância equivalente entre a fonte e o ponto de falta, maior a corrente de curto. O cálculo real depende de transformadores, cabos, motores, geradores, ponto de falta e contribuições das fontes.

Em uma entrevista, a resposta segura é: **"Eu levantaria as fontes e impedâncias do sistema, calcularia as correntes de curto máxima e mínima, verificaria a capacidade de interrupção e coordenaria as proteções."**

## 8. Diagrama unifilar e equipamentos

### 8.1 Como ler um unifilar

Siga o caminho da energia:

1. entrada ou fonte;
2. medição e seccionamento;
3. transformador;
4. barramento;
5. alimentadores;
6. quadros e painéis;
7. cargas;
8. aterramento e proteção.

Pergunte:

- qual é a tensão em cada trecho?
- qual proteção protege cada alimentador?
- onde é possível seccionar?
- existe fonte alternativa ou gerador?
- como o neutro está tratado?
- onde estão os intertravamentos?

### 8.2 Transformadores

O transformador altera níveis de tensão por indução eletromagnética. Sua potência é geralmente indicada em kVA.

Itens para observar:

- potência nominal;
- tensão primária e secundária;
- impedância percentual;
- relação de transformação;
- taps;
- grupo vetorial;
- método de resfriamento;
- aterramento do neutro;
- proteção contra sobrecorrente e temperatura;
- curto-circuito disponível no secundário.

### 8.3 Motores

O motor transforma energia elétrica em energia mecânica. Na partida, a corrente pode ser várias vezes a corrente nominal.

Métodos comuns:

- partida direta;
- estrela-triângulo;
- soft starter;
- inversor de frequência.

A escolha depende da potência, torque, processo, rede, aceleração permitida e exigência de controle de velocidade.

## 9. Painéis, quadros e instalações

Em um painel, observe:

- barramentos e isolação;
- identificação dos circuitos;
- grau de proteção contra entrada de poeira e água;
- ventilação e dissipação térmica;
- acessibilidade e manutenção;
- poder de interrupção;
- aterramento;
- torque das conexões;
- segregação entre potência e controle;
- espaço para expansão;
- barreiras contra contato acidental;
- intertravamentos.

Antes da energização, verifique projeto aprovado, montagem, identificação, continuidade do PE, isolação, sequência de fases, ajustes, limpeza, ausência de pessoas e ferramentas, documentação e autorização formal.

## 10. Aterramento, equipotencialização e SPDA

### 10.1 Aterramento

O aterramento contribui para segurança, referência de potencial, escoamento de correntes de falta e atuação das proteções.

- **PE:** condutor de proteção;
- **N:** neutro de serviço;
- **PEN:** condutor com funções combinadas, quando permitido pelo esquema;
- **massa:** parte condutiva acessível que normalmente não deveria estar energizada;
- **equipotencialização:** união intencional de partes condutivas para reduzir diferenças perigosas de potencial.

Não conecte neutro e proteção em qualquer ponto. O esquema de aterramento determina onde essa ligação pode existir.

### 10.2 SPDA e surtos

O SPDA reduz danos provocados por descargas atmosféricas. Ele envolve captação, descidas, aterramento e equipotencialização. A proteção contra surtos também considera DPS em linhas de energia e dados, conforme o projeto.

Uma haste isolada não significa automaticamente que o prédio está protegido. É preciso avaliar a estrutura, o risco, as linhas que entram no prédio, a equipotencialização, os DPS e a inspeção.

## 11. Segurança e NR-10

Em qualquer resposta de campo, mostre que segurança não é uma etapa opcional.

Considere:

- desenergização quando aplicável;
- seccionamento;
- impedimento de reenergização;
- constatação de ausência de tensão;
- aterramento temporário quando necessário;
- proteção de partes energizadas próximas;
- delimitação e sinalização;
- EPI e EPC;
- trabalhador autorizado;
- procedimento e análise de risco;
- liberação formal do serviço.

Não diga que faria uma medição em painel energizado "rapidinho". Diga que seguiria procedimento, autorização, análise de risco, instrumento adequado e limites de aproximação.

## 12. Baixa tensão e média tensão

### Baixa tensão

Revise circuitos terminais, alimentadores, quadros, proteção contra choques, capacidade de condução, queda de tensão, aterramento, ambientes especiais e documentação.

### Média tensão

Acrescente subestações, cubículos, relés, transformadores, seccionadoras, intertravamentos, ensaios, distâncias, concessionária, coordenação de proteção, manutenção e arco elétrico.

Resposta recomendada:

> Consigo discutir os fundamentos e o método, mas não liberaria sozinho uma solução de média tensão sem revisar os dados, as normas aplicáveis, os estudos de curto-circuito e proteção e a validação do responsável técnico.

## 13. Normas que você deve reconhecer

Não precisa decorar artigos. Saiba a finalidade:

- **NR-10:** segurança em instalações e serviços em eletricidade;
- **ABNT NBR 5410:** instalações elétricas de baixa tensão;
- **ABNT NBR 14039:** instalações elétricas de média tensão;
- **ABNT NBR 5419:** proteção contra descargas atmosféricas;
- padrões da concessionária;
- procedimentos internos de segurança, qualidade e comissionamento.

Na entrevista, diga que consultaria a edição vigente, os requisitos do cliente e os padrões internos antes de fechar uma decisão.

## 14. Interface multidisciplinar

Projetos elétricos não existem isolados. Alguns conflitos e interfaces comuns:

- rota de cabos com estruturas e tubulações;
- eletrocalhas com acesso e manutenção;
- motores com cargas mecânicas;
- potência próxima de instrumentação e comunicação;
- aterramento de estruturas, painéis e equipamentos;
- sala elétrica com ventilação, incêndio e acesso;
- bases, chumbadores e dimensões de equipamentos;
- alterações de campo que precisam virar documentação as-built.

Uma revisão multidisciplinar deve perguntar: o equipamento cabe? A rota existe? A manutenção consegue acessar? Há interferência? O aterramento foi previsto? A documentação de todas as disciplinas está coerente?

## 15. Documentação de engenharia

Documentos que você deve reconhecer:

- lista de cargas;
- lista de cabos;
- lista de materiais;
- diagrama unifilar;
- diagramas de controle;
- plantas e detalhes;
- memoriais descritivos;
- especificações técnicas;
- folhas de dados;
- relatórios de inspeção;
- registros de revisão;
- documentação as-built.

Ao revisar, verifique identificação, versão, unidades, origem e destino dos cabos, simbologia, coerência entre desenhos, premissas, cálculos, interfaces e aprovações.

## 16. Excel, VBA e Power BI na engenharia

Apresente essas ferramentas como apoio à decisão técnica:

- **Excel:** listas de cargas, controles, cálculos, filtros, consolidação e rastreabilidade;
- **VBA:** automação de rotinas repetitivas e padronização de tarefas;
- **Power BI:** indicadores, tendências, backlog, falhas, disponibilidade, custos e prazos.

Um processo confiável precisa responder:

1. Qual é a fonte dos dados?
2. Há duplicidade?
3. Existem dados ausentes?
4. Como os cálculos são validados?
5. Quem é o responsável pelo indicador?
6. O painel representa a realidade de campo?

Frase para entrevista:

> Uso ferramentas de dados para organizar informações e dar visibilidade à engenharia, mas mantenho as premissas, a fonte, as validações e a revisão técnica. Um dashboard não substitui o cálculo nem a responsabilidade do engenheiro.

## 17. Perguntas técnicas e respostas

### Como você dimensionaria um alimentador?

> Eu levantaria a demanda e a corrente de projeto, verificaria tensão, distância, método de instalação, temperatura, agrupamento e regime. Depois analisaria capacidade de condução, queda de tensão, curto-circuito, proteção, neutro, PE e requisitos normativos. Registraria as premissas e encaminharia para revisão.

### O que é fator de potência?

> É a relação entre potência ativa e aparente. Quando é baixo, a instalação precisa transportar mais corrente para a mesma potência útil, aumentando perdas e ocupação. A correção deve ser estudada para evitar sobretensão e ressonância.

### O que acontece na falta de fase de um motor?

> As correntes das fases restantes podem aumentar, causando aquecimento, perda de torque e dano. A proteção deve detectar a condição conforme a aplicação. Não se deve apenas aumentar o ajuste para evitar desarme.

### O que é seletividade?

> É fazer com que a proteção mais próxima da falha atue primeiro, preservando as partes saudáveis. Isso deve ser comprovado por estudo, curvas e ajustes, não presumido.

### Você domina AutoCAD ou Revit?

> Minha experiência principal não foi como projetista dedicado nessas ferramentas. Tenho capacidade de interpretar documentação e entender critérios de engenharia, mas reconheço que preciso desenvolver a execução nos softwares. Estou disposto a aprender com revisão e orientação.

### Já foi responsável técnico?

> Não. Minha experiência foi de apoio e atuação técnica em ambiente industrial e de manutenção. Não vou atribuir a mim uma responsabilidade que não exerci. Quero evoluir com supervisão adequada, domínio dos critérios e respeito às exigências legais.

## 18. Perguntas comportamentais

### Por que quer a vaga?

> Quero fazer a transição para a atuação formal como engenheiro eletricista, usando minha experiência prática em indústria, ativos, manutenção e análise técnica. A vaga combina engenharia, campo, documentação e interface com especialistas.

### Qual é seu ponto de desenvolvimento?

> Minha principal lacuna é não ter experiência formal acumulada em projeto elétrico. Estou tratando isso com revisão de fundamentos, estudo das normas aplicáveis e prática de leitura de diagramas e memoriais. Em compensação, já conheço ambiente industrial, segurança, manutenção, priorização e análise de problemas reais.

### Como reage quando não sabe?

> Separo o que sei do que preciso verificar. Levanto dados, consulto norma e documentação, busco o especialista adequado, calculo e registro as premissas. Prefiro uma resposta verificável a uma resposta rápida e insegura.

## 19. Exercícios de fixação

### Exercício A - corrente trifásica

Calcule aproximadamente a corrente de um motor de 15 kW, 380 V, fator de potência 0,85 e rendimento 0,90.

Resposta:

$$I = \frac{15000}{\sqrt{3} \cdot 380 \cdot 0,85 \cdot 0,90} \approx 30\ A$$

Isso não define sozinho o cabo ou o disjuntor.

### Exercício B - motor desarmando

Um motor desarma repetidamente. Qual é a sequência de investigação?

Resposta esperada: histórico, carga mecânica, corrente nas três fases, tensão, conexões, isolamento, temperatura, ventilação, vibração, ajuste e curva da proteção, corrente de partida, condição do motor e qualidade da alimentação.

### Exercício C - cabo e disjuntor

Por que não se escolhe o disjuntor apenas pela corrente da carga?

Resposta esperada: porque é necessário proteger o cabo, considerar corrente de partida, capacidade de interrupção, curto-circuito, queda de tensão, seletividade, método de instalação, temperatura e continuidade do processo.

### Exercício D - leitura de unifilar

Ao receber um diagrama, identifique a fonte, o transformador, os barramentos, os alimentadores, as proteções, as cargas, o neutro, o PE e os pontos de seccionamento.

## 20. Plano de revisão

### Primeiro estudo

Leia os capítulos 1 a 5. Treine sua apresentação e revise Lei de Ohm, potência, trifásico, demanda, cabos e queda de tensão.

### Segundo estudo

Leia os capítulos 6 a 11. Revise curto-circuito, seletividade, motores, transformadores, aterramento, SPDA e NR-10.

### Terceiro estudo

Leia os capítulos 12 a 18. Treine documentação, interface multidisciplinar, ferramentas de dados e respostas de entrevista.

### Revisão final

Faça os exercícios sem consultar o texto. Depois responda em voz alta:

- como eu dimensionaria um alimentador?
- o que verificaria antes de energizar um painel?
- o que acontece na falta de fase?
- como explicaria minha falta de experiência formal?
- quais perguntas farei à empresa?

Na véspera, revise apenas resumos, apresentação, perguntas e histórias reais. Não tente memorizar uma norma inteira durante a madrugada.

## 21. Resumo de bolso

### Fórmulas

$$V = R I$$

$$P = V I$$

$$P_{3\phi} = \sqrt{3} V_{LL} I FP$$

$$I_{motor} = \frac{P}{\sqrt{3} V_{LL} FP \eta}$$

$$I_B \leq I_N \leq I_Z$$

$$I_{cc} \approx \frac{V}{Z_{eq}}$$

### Frase de segurança

> Dados, premissas, norma, cálculo, validação e registro.

### Frase de honestidade

> Não executei isso sozinho em um projeto formal, mas conheço o fundamento e explico como levantaria os dados, faria a análise e validaria a solução.

### Frase final

> Não começo do zero: já vivi ambiente industrial, manutenção, ativos, análise de falhas, indicadores, segurança e interface com especialistas. Quero aplicar essa base em projetos elétricos com responsabilidade, aprender os padrões da empresa e entregar soluções verificadas e documentadas.
