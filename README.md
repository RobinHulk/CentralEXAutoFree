# TeroCentralFree

Fuentes de trabajo de la versión Free de CentralEXAuto, con los cambios del fork para la pantalla principal y el comportamiento de expiración probado en el emulador.

## Contenido

- `android-project/`: proyecto Android Studio con las fuentes Java, recursos y manifiesto.
- `jadx-decompiled/`: salida completa de JADX para consulta y análisis.
- `apktool-decoded/`: decompilación base con Apktool.
- `apktool-test-src/`: fuente usada para generar la APK de prueba del emulador; incluye los ajustes necesarios para ejecutarse sin privilegios de sistema en el emulador Automotive.

No se incluyen APKs compiladas ni claves de firma. La credencial SMTP incrustada en la salida decompilada se sustituyó por un marcador para no publicar secretos; configura una credencial propia si necesitas esa función. La imagen personalizada del fondo está en `res/drawable-nodpi/sapo.png` dentro de los árboles de recursos correspondientes. Su área visible se ajustó a la misma área y centro de la imagen original.

## Reconstrucción de la APK de prueba

Con Java y Apktool 2.11.0 instalados:

```powershell
java -jar apktool_2.11.0.jar b apktool-test-src -o build/CentralEXAuto-emulator-unsigned.apk
```

Firma la APK localmente con una clave de depuración propia antes de instalarla. No guardes keystores, contraseñas ni APKs firmadas en este repositorio.

El proyecto Android Studio requiere Android SDK 35 y Android Gradle Plugin 8.7.2. Configura `local.properties` en tu equipo; ese archivo se excluye del control de versiones.


