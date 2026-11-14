# Memoria del proyecto Geely EX2 / CentralEXAuto

## Objetivo

Documentar las variantes y URLs de actualización que usa CentralEXAuto para ConnAdaptor y DualDashcam. Esta memoria debe ser legible por Codex y Antigravity.

## ConnAdaptor

Paquete Android: `com.njda.adapter`.

El ConnAdaptor tiene dos dimensiones de selección:

- Versión de Central: `1111` o `1114`.
- Modo de proyección: `ambos`, `aa` o `carplay`.

`ambos` significa Android Auto + CarPlay. `aa` significa solo Android Auto. `carplay` significa solo CarPlay.

### URLs

- `1111` + `ambos`: `https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/connadaptor-1111.json`
- Fallback general para `1111` + `ambos`: `https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/connadaptor.json`
- `1114` + `ambos`: `https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/connadaptor-1114.json`
- `1111` + `aa`: `https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/connadaptor-aa.json`
- `1114` + `aa`: `https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/connadaptor-aa-1114.json`
- Solo `carplay`: `https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/connadaptor-carplay.json`

### Versiones y hashes conocidos

- Base/`1111`: `260459e68360a4ff5c3720d84a2acddd`
- `1114`: `4b0e1de041032ee63ef0c223926d7889`
- Solo Android Auto `1111`: `d49ab03b18a5c5e21928c59c465394d7`
- Solo Android Auto `1114`: `0c280b07f92a3538bcda1aae2e8b0746`
- Solo CarPlay: `4b37f46239a938fa164d4a0bdc65a399`

La versión predeterminada del código anterior es `1111` y el modo predeterminado es `ambos`. Para el Geely EX2 se debe probar primero `1111` + `ambos`; si no resuelve la conexión, probar `1114` + `ambos`. No mezclar una APK `aa` o `carplay` con otro modo.

## DualDashcam

Paquete Android: `br.com.central.dualdashcam`.

Manifiesto de actualización:

`https://raw.githubusercontent.com/swimapps/Outros/main/dualdashcam.json`

URL del manifiesto histórico usado por la versión 0.8.4:

`https://raw.githubusercontent.com/swimapps/Outros/af0c87b066e4d8c85f9fdd961b5be521bb6c1d80/dualdashcam.json`

URL de descarga del APK indicada por ese manifiesto:

`https://raw.githubusercontent.com/swimapps/Outros/main/DualDashcam_signed.apk`

Datos del manifiesto histórico: versión `0.8.4`, `versionCode` `61`, SHA-256
`480536ea83373e8e92ceaf9adabcc7878a4c1f38d35946192fb2e0c07999a2f9`.

APK extraída del headunit `192.168.1.184`:

- Paquete: `br.com.central.dualdashcam`
- Versión: `1.1.4-free-ar-rc1`
- Archivo local: `F:\dev\codex\Teru\DualDashcam-installed.apk`
- Tamaño: `12.632.848 bytes`

## Actualización de CentralEXAuto

- Canal estable: `https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/exsapocentral.json`
- Canal experimental: `https://raw.githubusercontent.com/swimapps/CentralEXAuto/main/exsapocentral-experimental.json`

Los manifiestos JSON contienen el `apkUrl`, la versión y el hash. La APK de actualización de CentralEXAuto se descarga localmente como `/data/local/tmp/CentralEXAuto-update.apk`; el ConnAdaptor como `/data/local/tmp/ca_fix-update.apk`.

## APKs extraídas del headunit

- CAConnect/ConnAdaptor instalado (`com.njda.adapter`): `F:\dev\codex\Teru\CAConnect-installed.apk`, tamaño `19.567.617 bytes`.
- DualDashcam instalado (`br.com.central.dualdashcam`): `F:\dev\codex\Teru\DualDashcam-installed.apk`, tamaño `12.632.848 bytes`, versión `1.1.4-free-ar-rc1`.

## Referencias

- Código de selección de URLs: `vieja19/CentralEXAuto/app/src/main/java/com/ex/auto/AppConstants.java`
- Código de aplicación/restauración: `vieja19/CentralEXAuto/app/src/main/java/com/ex/auto/ShellSnippets.java`

## Estado del fork Tero Central Free (14-11-2026)

- Fuente que se usa para reconstruir la APK decompilada: `F:\dev\codex\Teru\ultimaFree78\apktool-test-src`.
- Copia del proyecto/repositorio de trabajo: `F:\dev\codex\Teru\TeroCentralFree`.
- La variante Tero es una app independiente del original: paquete `com.robihulk.terucentralfree`, etiqueta `Tero Central Free`.
- Última versión generada: `2.19.78-Tero5`, `versionCode` `679`.
- APK firmada localmente: `F:\dev\codex\Teru\ultimaFree78\apktool-test\TeroCentralFree-2.19.78-Tero5.apk`. La clave de depuración está en el equipo, no en el repositorio.
- AVD usado para revisión: `TeruAutomotive33`.

### Cambios incluidos en Tero5

- La importación de ajustes copia todos los XML de SharedPreferences de almacenamiento normal y protegido desde EX Sapo Central al paquete Tero, usando el usuario Android activo (`am get-current-user`) en lugar de asumir el usuario `0`.
- Después de copiar, lee y aplica los modos de conducción y regeneración. Luego programa un arranque limpio de Tero con `AlarmManager`/`PendingIntent` y finaliza el proceso para que todas las SharedPreferences importadas vuelvan a cargarse desde disco.
- Para importar se necesita EX Sapo Central instalada en el mismo usuario Android y que el puente ADB privilegiado funcione. La importación completa aún no se ha verificado de extremo a extremo: el AVD de prueba no tenía instalado el paquete original `com.ex.auto`.
- `MainActivity.onResume()` conserva el refresco de estado y los receptores de la app, pero omite el antiguo control que mostraba que ConnAdaptor/app estaba caducado.
- El selector de APKs de la pantalla Apps usa texto negro. Antes la referencia de layout era inválida (`0x7f0a0144`) y causaba `Resources$NotFoundException` al entrar en Apps; se cambió al layout `support_simple_spinner_dropdown_item` (`0x7f0c0059`).
- Home vuelve a actualizar periódicamente la batería y el almacenamiento. En el AVD se verificó espacio libre de `5.3 GB`; batería 12 V aparece `n/d` porque el AVD no expone la propiedad vehicular. Hay que comprobar el valor de batería en el head unit real.
- Icono de launcher adaptativo y clásico ampliado a partir de la imagen de Home. También se reemplazó `drawable-nodpi/sapo_icon.png`, que seguía usándose como icono de notificación del servicio de pantalla negra.
- Tero5 se instaló en el AVD; Home y Apps abrieron sin registrar un nuevo cierre.

### Reconstrucción

Usar JDK 23 directamente y Apktool 2.11.0:

```powershell
$env:JAVA_HOME='C:\Program Files\Java\jdk-23'
$env:PATH="$env:JAVA_HOME\bin;$env:PATH"
java.exe -jar 'F:\dev\codex\Teru\ultimaFree78\tools\apktool\apktool_2.11.0.jar' b `
  'F:\dev\codex\Teru\ultimaFree78\apktool-test-src' `
  -o 'F:\dev\codex\Teru\ultimaFree78\apktool-test\TeroCentralFree-<version>-unsigned.apk' --force-all
```

Firmar el APK localmente con `apksigner` y la clave de depuración del equipo; no guardar contraseñas ni keystore en el repositorio.

## Cierre de sesión (14-11-2026)

- Repositorio publicado: `https://github.com/RobinHulk/SapoCentralEXAutoFree` (rama `main`). El checkout de trabajo es `F:\dev\codex\Teru\TeroCentralFree`; el directorio raíz `F:\dev\codex\Teru` no es un repositorio Git.
- La rama remota `main` conserva el historial y contenido que ya existía. Se agregó el árbol de fuentes de Tero y la documentación como historia integrada, sin force-push.
- Último commit verificado en GitHub: `57fc325` (`Document Tero image resource links`). El commit `88392ac` agregó el árbol de fuentes y documentación Tero al repositorio existente.
- La guía de portabilidad está en `guia_modificacion.md`, tanto en la raíz del proyecto como en el repositorio. Ambas copias se sincronizaron. Incluye los cambios numerados y la finalidad de reproducirlos al portar una versión nueva.
- Enlaces de recursos que quedaron en la guía:
  - Fondo de Home: `https://github.com/RobinHulk/SapoCentralEXAutoFree/blob/main/apktool-test-src/res/drawable-nodpi/sapo.png`
  - Primer plano del icono de la app (densidad xxxhdpi; también copiar las otras densidades y el fondo/adaptive icon): `https://github.com/RobinHulk/SapoCentralEXAutoFree/blob/main/apktool-test-src/res/mipmap-xxxhdpi/ic_launcher_foreground.png`
  - Icono de Recientes/actividad activa: `https://github.com/RobinHulk/SapoCentralEXAutoFree/blob/main/apktool-test-src/AndroidManifest.xml#L40-L41`. `MainActivity` usa `@mipmap/ic_launcher`; no existe un PNG aparte de Recientes. `sapo_icon.png` es para notificaciones.
- La guía incluye como checklist dejar apagada por defecto la actualización automática en la última pantalla de ajustes. Esto quedó documentado como instrucción de portabilidad; no se verificó aquí un cambio del valor por defecto en el código de la aplicación.
- El acceso GitHub mediante `gh` reportó un token inválido, aunque el push Git por HTTPS sí se completó. Para publicar actualizaciones posteriores, apuntar a `https://github.com/RobinHulk/SapoCentralEXAutoFree.git`; en este checkout la rama local usada es `integrate-tero` y se publica a `main`.
- Queda pendiente validar en el head unit real la importación completa de preferencias y el voltaje de batería de 12 V. En el AVD solo se confirmó el espacio libre; no exponer ese dato del vehículo es una limitación del emulador.
