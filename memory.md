# Memoria del proyecto Tero Central Free

Última consolidación: 17-11-2026.

## Repositorios y carpetas

- Repositorio de fuentes: [RobinHulk/SapoCentralEXAutoFree](https://github.com/RobinHulk/SapoCentralEXAutoFree). GitHub lo redirige al repositorio `RobinHulk/CentralEXAutoFree`; la rama publicada es `main`.
- Repositorio de manifiestos y APK del feed: [RobinHulk/CentralEXAutoFree](https://github.com/RobinHulk/CentralEXAutoFree).
- Checkout de trabajo con Git: `F:\dev\codex\Teru\TeroCentralFree`. El directorio padre `F:\dev\codex\Teru` no es un repositorio Git.
- **Fuente canónica para reconstruir la APK:** `F:\dev\codex\Teru\TeroCentralFree\apktool-test-src`.
- **Destino de los builds:** `F:\dev\codex\Teru\TeroCentralFree\apktool-test`.
- El árbol `F:\dev\codex\Teru\ultimaFree78\apktool-test-src` fue sobrescrito accidentalmente y se restauró desde el repo el 17-11-2026. Se conservó lo que había antes en `F:\dev\codex\Teru\ultimaFree78\apktool-test-src-overwritten-2026-11-17`. A partir de ahora no usar `ultimaFree78` como fuente ni destino para nuevas compilaciones.
- El checkout `TeroCentralFree` y la fuente canónica indican `versionCode 685` / `versionName 2.19.78-Tero11` en la revisión recuperada. Se compararon las URLs recientes de actualización y coinciden en ambos árboles.

## Build actual

- La versión elegida para la nueva línea numérica es `versionName 2.19.89`, `versionCode 686`, sin sufijo `Tero` en el nombre de versión.
- APK local firmada: `F:\dev\codex\Teru\TeroCentralFree\apktool-test\TeroCentralFree-2.19.89.apk`.
- SHA-256 local: `0ad350c0446e3cc0f9ab7fdc0f65011aa56cd655f463914d7065c0920e56958a`.
- Package: `com.robihulk.terucentralfree`; etiqueta visible `Tero Central Free`.
- La APK fue compilada con Apktool 2.11.0 y JDK 23, y firmada con el debug keystore local. Certificado SHA-256: `1ce4a3586e49c17ba8ff4ec2285b26f53f141bb595b0f3ce97097ff114fb318c`. La clave original no está en el repo.
- Herramientas locales usadas: `F:\dev\codex\Teru\ultimaFree78\tools\apktool\apktool_2.11.0.jar` y Android SDK build-tools 35.0.0. El jar se usa como herramienta; las fuentes y los APK de salida permanecen en `TeroCentralFree`.
- El manifiesto remoto `exsapocentral.json` todavía anunciaba Tero11 (`versionCode 685`) al consolidar esta memoria. Tero12/2.19.89 se generó localmente; no afirmar que esté publicada hasta subir su APK y actualizar el manifiesto.

Comando base de build:

```powershell
$env:JAVA_HOME='C:\Program Files\Java\jdk-23'
$env:PATH="$env:JAVA_HOME\bin;$env:PATH"
java.exe -jar 'F:\dev\codex\Teru\ultimaFree78\tools\apktool\apktool_2.11.0.jar' b `
  'F:\dev\codex\Teru\TeroCentralFree\apktool-test-src' `
  -o 'F:\dev\codex\Teru\TeroCentralFree\apktool-test\TeroCentralFree-2.19.89-unsigned.apk' --force-all
```

Firmar localmente con `apksigner` usando `C:\Users\killer\.android\debug.keystore`. No guardar ni subir el keystore o sus contraseñas.

## Feeds de actualización propios

### Tero Central Free

- Manifiesto: `https://raw.githubusercontent.com/RobinHulk/CentralEXAutoFree/main/exsapocentral.json`.
- APK: `https://raw.githubusercontent.com/RobinHulk/CentralEXAutoFree/main/TeroCentralFree.apk`.
- El manifiesto debe contener `versionCode`, `versionName`, `apkUrl` y `sha256`.
- Tanto la comprobación manual como `CentralWatchdogService` deben consultar el manifiesto propio. El selector Estable/Experimental está oculto y el canal se fuerza a estable.

### ConnAdaptor / CAConnect

- Todos los modos y variantes consultan el mismo JSON: `https://raw.githubusercontent.com/RobinHulk/CentralEXAutoFree/main/connadaptor.json`.
- APK: `https://raw.githubusercontent.com/RobinHulk/CentralEXAutoFree/main/CAConnect.apk`.
- El instalador espera `md5` y `apkUrl`; el MD5 de la APK que se publicó al consolidar es `e226ba28395f432d85951c10c4b2fdbe`.
- Paquete Android: `com.njda.adapter`.

### DualDashcam

- JSON: `https://raw.githubusercontent.com/RobinHulk/CentralEXAutoFree/main/dualdashcam.json`.
- APK: `https://raw.githubusercontent.com/RobinHulk/CentralEXAutoFree/main/DualDashcam.apk`.
- Paquete: `br.com.central.dualdashcam`. El manifiesto publicado corresponde a versión `0.8.4`, `versionCode 61`, SHA-256 `480536ea83373e8e92ceaf9adabcc7878a4c1f38d35946192fb2e0c07999a2f9`.
- El catálogo, el botón de instalación y el chequeo de dependencia/versión usan el manifiesto RobinHulk.

### Capy / Geely Battery

- JSON: `https://raw.githubusercontent.com/RobinHulk/CentralEXAutoFree/main/geelybattery.json`.
- APK: `https://raw.githubusercontent.com/RobinHulk/CentralEXAutoFree/main/GeelyBattery.apk`.
- Copia publicada: versión `0.29.0`, código `783`, paquete `com.timhss.geelybattery`, SHA-256 `a82897ba929791ff7a81d8224d09b3a34b66295ecc98a527c3317abfcf6a8486`.
- La app consulta el feed de RobinHulk; no debe volver a usar el JSON de Timoteohss.

### Otros elementos del catálogo Apps

Todos los JSON siguientes están en `https://raw.githubusercontent.com/RobinHulk/CentralEXAutoFree/main/`:

| App | Manifiesto | Estado verificado |
|---|---|---|
| Ei Sapo | `eisapo.json` | Ruta en código, pero responde 404; falta publicar manifiesto/APK. |
| ConnAdaptor Logger | `connadaptorlogger.json` | Ruta en código, pero responde 404; falta publicar manifiesto/APK. |
| Chromium | `chromium.json` | JSON y APK indicados responden. |
| Amaze File Manager | `filemanager.json` | JSON y APK indicados responden. |
| Firefox | `firefox.json` | JSON y APK indicados responden. |
| microG | `microg.json` | JSON y APK indicados responden. |

Capy y DualDashcam se describen arriba. Waze, VLC, Disney+ y Prime Video aparecen como apps informativas/detectadas, sin manifiesto ni botón de instalación en este catálogo.

## Cambios funcionales de Tero que deben preservarse

- Identidad independiente para coexistir con EX Sapo Central: `com.robihulk.terucentralfree`; las clases internas mantienen `com.ex.auto`.
- Se retiró el aviso/bloqueo de caducidad de apertura conservando las tareas de ciclo de vida y refresco de Home. No borrar la lectura de voltaje/almacenamiento al portar.
- Home usa la nueva imagen Geely y enlaza al GitHub `robinhulk`. Iconos de launcher, launcher redondo y Recientes se actualizaron con esa imagen; `sapo_icon.png` se usa por separado en notificaciones.
- Botón discreto para importar todas las SharedPreferences CE/DE de `com.ex.auto` al paquete Tero. Después re-aplica conducción/regeneración y reinicia el proceso para recargar todas las opciones.
- Se corrigió el crash al abrir Apps, se cambió el color del combo del instalador y se adaptó a tema día/noche (`cx_text_primary`).
- La selección de canal de actualizaciones no se muestra y el canal se fuerza a estable.
- La guía `guia_modificacion.md` es el checklist de portabilidad completo. Revisarla al adaptar cada nueva versión.

## ConnAdaptor: referencias históricas

La implementación anterior tenía variantes swimapps para central `1111`/`1114` y modos `ambos`/`aa`/`carplay`. Esa selección dejó de usarse en el fork: el código Tero actual dirige todas las combinaciones al único manifiesto RobinHulk indicado arriba. Los enlaces históricos pueden responder 404 y no deben restaurarse como fallback.

## Estado y publicación

- La carpeta `TeroCentralFree` es el checkout versionado y contiene `android-project/`, `apktool-test-src/`, `jadx-decompiled/`, `apktool-decoded/`, `guia_modificacion.md` y esta memoria.
- La raíz `F:\dev\codex\Teru` no es repo. Mantener sincronizadas allí `memory.md` y `guia_modificacion.md` como copias de consulta.
- Push de fuentes y Markdown: usar `https://github.com/RobinHulk/SapoCentralEXAutoFree.git` (GitHub informa que se movió a `RobinHulk/CentralEXAutoFree`) y publicar la rama de trabajo en `main` sin force-push. Puede haber commits concurrentes en el feed: hacer fetch/merge antes de reintentar un push rechazado.
- No se encontró la firma original privada; la app firmada localmente no puede reemplazar la app oficial si sus firmas difieren. El package independiente permite coexistencia, aunque separa los datos de aplicación.

## Verificaciones pendientes

- Publicar los manifiestos/APK de Ei Sapo y ConnAdaptor Logger en RobinHulk si deben poder instalarse desde Apps.
- Antes de distribuir `2.19.89` por el auto-updater, subir el APK firmado y actualizar `exsapocentral.json` con código, versión, URL y hash reales.
- En head unit real validar importación completa de preferencias, batería 12 V, permisos y comportamiento del ConnAdaptor. El AVD no ofrece todas las propiedades del vehículo.
- Confirmar en el código antes de cada release si la actualización automática por defecto está apagada. La guía conserva ese punto como checklist de portabilidad.
