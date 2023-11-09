# MSc_Dissertation

organização deste repositório:
- report: inclui os ficheiros necessários para compilar o relatório em latex
- rvfpga: inlui os dois cursos da imagination utilizados como base
- SoC: inlui as várias iterações do sistema
    - rvfpga: sistema mais atualizado
- SW: sw utilizado para testar o SoC

### Como gerar o bitstream da placa?
1. exportar o projeto vivado SoC/rvfpga.zip
2. correr o script importMissing.py para copiar os ficheiros que o vivado não exporta da pasta das sources do rvfpga [MSc_Dissertation\SoC\src] para a pasta das sources do projeto do vivado: ```python3 importMissing.py [source] [destination]```
3. abrir o projeto vivado e gerar o bitstream

### Como correr um programa na placa com platformIO?
1. criar um projeto platformIO
2. no ficheiro platformio.ini adicionar o path para o bitstream gerado
3. no platformio carregar em Upload Bitstream para fazer o upload do bitstream para a placa
4. no platformio carregar em Upload and Monitor para correr o programa