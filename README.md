# CentralEXAuto

Ecossistema de apps para a central multimídia **Geely IHU629G** (Android Automotive / ECarX) e o celular do motorista. Quatro peças principais, cada uma com um papel distinto:

> **Atualização de nomes:** os apps antes chamados **CentralEXAuto** e **CentralPhoneApp** passaram a se chamar **EX Sapo Central** e **EX Sapo Móvel**, respectivamente. Os APKs foram renomeados para refletir os novos nomes (`EXSapoCentral.apk` e `exsapomovel.apk`), mas os arquivos antigos (`CentralEXAuto-geely-platform-signed.apk` e `CentralPhoneApp-debug.apk`) continuam no repositório por compatibilidade. É o mesmo app de sempre — apenas com o nome de exibição e o arquivo atualizados.

## EX Sapo Central (antigo CentralEXAuto) — `EXSapoCentral.apk`

O app principal, roda **na central do carro**. É um app de sistema (`sharedUserId="android.uid.system"`, assinado com a chave de plataforma da Geely), o que dá acesso a APIs privilegiadas (Car API, WiFi, energia) que um app comum não teria.

Principais funções:
- **Tela preta (blackout)** — cobre o display da central quando não está em uso.
- **Acesso Rápido** — floater (overlay) com atalhos: modo condução/regeneração, telemetria, AVAS, HVAC.
- **Drive/Regen** — sincroniza os controles de condução/regeneração e do ar-condicionado com o estado real do carro (lido ao vivo do VHAL, não de preferências salvas).
- **AVAS** — controle do som de alerta para pedestres.
- **WiFi privilegiado** — gestão de rede/hotspot com permissões que um app normal não tem.
- **Telemetria** — expõe os dados do VHAL (velocidade, bateria, etc.) via TCP na porta 47800, consumidos por outros apps (painel, AAExCarro).
- **Sincronização com o celular** — troca configurações e comandos com o EX Sapo Móvel (antigo CentralPhoneApp) em tempo real.
- **Watchdog** — serviço em foreground que mantém tudo isso vivo, reaplica ajustes no boot/troca de marcha e se recupera de crash/bootloop.
- **Instalador de apps** — recebe e instala os APKs baixados pelo AAExInstall.

## AAExInstall — `AAExInstall-geely-platform-signed.apk`

Roda **no celular** do motorista (não na central). É a "loja de apps" do ecossistema: baixa, confere o SHA-256 e instala/atualiza os demais apps (incluindo os dois abaixo e vários outros de terceiros úteis no carro), buscando a versão mais recente de cada um a partir deste repositório.

Semelhante ao **AAAD**, também instala aplicativos dentro do Android Auto que não fazem parte da lista de apps liberada pelo Google — dando acesso a conteúdo de internet (navegadores, streaming, etc.) diretamente na tela da central via projeção do Android Auto.

*Requer autorização de uso, que deve ser solicitada diretamente ao desenvolvedor.*

## AAExCarro — `AAExCarro.apk`

Roda **no celular**, com superfície no Android Auto. É o app de telemetria e custos do veículo:
- Lê dados de OBD2 via adaptador ELM327 (a central não consegue requisitar OBD2 diretamente).
- Recebe telemetria do VHAL enviada pela central (velocidade, bateria, etc.).
- Mantém histórico offline das viagens.
- Módulo de **Custos & Eficiência**: recargas, despesas, relatórios de custo por km e mensais, eficiência real vs. prometida (inspirado no Drivvo).

*Requer autorização de uso, que deve ser solicitada diretamente ao desenvolvedor.*

## EX Sapo Móvel (antigo CentralPhoneApp) — `exsapomovel.apk`

Roda **no celular**. É o companheiro do EX Sapo Central: sincroniza, em tempo real, as configurações entre o celular e a central, por WiFi (TCP) ou Bluetooth (RFCOMM), usando o mesmo protocolo nos dois casos.

- **Configurações (toggles, drive/regen, etc.):** a central é sempre a fonte da verdade — o celular adota o valor dela e não fica reaplicando ajustes sozinho a cada reconexão.
- **Ar-condicionado:** o celular pode comandar diretamente a ventilação e a temperatura do carro, sem precisar esperar sincronização.
- **Comandos remotos:** troca de Android Auto/CarPlay, ajuste rápido de clima e reboot da central, tudo a partir do celular.
- Dá pra, por exemplo, ligar o ar-condicionado do carro pelo celular antes de entrar nele.

*Requer autorização de uso, que deve ser solicitada diretamente ao desenvolvedor.*

## Contato

O desenvolvedor pode ser contactado pelos grupos de WhatsApp, pelo Instagram ou por e-mail:

- WhatsApp: https://chat.whatsapp.com/KEdB6K9ghBWBTSsAH0u2MC
- WhatsApp: https://chat.whatsapp.com/ISkSCIdDz4fBn6d61wQlJ5
- Instagram: https://www.instagram.com/p/Da3AEOvkarp/
- E-mail: appsdecarro@gmail.com
## Fuentes del fork Tero Central Free

Este repositorio incluye también el código fuente de la variante Tero, en `android-project/`, `jadx-decompiled/`, `apktool-decoded/` y `apktool-test-src/`. La guía de portabilidad está en `guia_modificacion.md`; la memoria del proyecto, en `memory.md`.

La fuente canónica para reconstruir la APK es `apktool-test-src/`; los APK generados se guardan en `apktool-test/`. El build local actual es `2.19.89` (`versionCode` 686). Apktool 2.11.0:

```powershell
$env:JAVA_HOME='C:\Program Files\Java\jdk-23'
$env:PATH="$env:JAVA_HOME\bin;$env:PATH"
java.exe -jar 'F:\dev\codex\Teru\ultimaFree78\tools\apktool\apktool_2.11.0.jar' b `
  'F:\dev\codex\Teru\TeroCentralFree\apktool-test-src' `
  -o 'F:\dev\codex\Teru\TeroCentralFree\apktool-test\TeroCentralFree-2.19.89-unsigned.apk' --force-all
```

El proyecto Android Studio requiere Android SDK 35 y Android Gradle Plugin 8.7.2. Configura `local.properties` en tu equipo; este archivo se excluye del control de versiones. Firma el APK localmente con una clave de desarrollo propia. No se incluyen claves privadas ni APKs compiladas en el árbol de fuentes.

La variante Tero incorpora una opción para importar las SharedPreferences de EX Sapo Central, incluidas las áreas de almacenamiento normal y protegido. Después aplica los modos de conducción/regeneración e inicia un proceso limpio para recargar las preferencias.
