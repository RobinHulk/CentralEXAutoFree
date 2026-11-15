# Guía de modificaciones de Tero Central Free

## Finalidad

Esta lista documenta los cambios que se aplicaron al fork de EX Sapo Central para poder volver a reproducirlos al decompilar y adaptar una versión nueva. Debe usarse como checklist de portabilidad: revisar cada punto contra el código nuevo, reaplicar el cambio correspondiente y probarlo en el emulador y, cuando dependa de funciones del vehículo, en el head unit.

La fuente de referencia actual es `ultimaFree78/apktool-test-src`. La variante más reciente construida durante este trabajo es `ultimaFree78/apktool-test/TeroCentralFree-2.19.78-Tero5.apk`.

## Cambios aplicados

1. **Identidad del fork y convivencia con la app original.** Se cambió el `applicationId` del manifiesto de `com.ex.auto` a `com.robihulk.terucentralfree` y el nombre visible a `Tero Central Free`. Esto permite instalar Tero junto a EX Sapo Central y mantiene sus datos privados separados. Al portar, actualizar también las autoridades y permisos del manifiesto que deban ser únicos por paquete. Las clases internas siguen bajo `com.ex.auto`; no renombrar ese espacio de clases sin migrar todas sus referencias.

2. **Firma y permisos de instalación.** Tero se firma con la clave local de desarrollo disponible en el entorno de compilación; no se encontró la clave privada original. Por eso no puede actualizar la instalación original como si tuviera la misma firma: debe conservar su ID de paquete propio para coexistir. Revisar los permisos especiales y de sistema en el head unit al instalar la nueva variante.

3. **Eliminación del bloqueo por caducidad al abrir.** Se quitó del flujo de `MainActivity.onResume()` la comprobación remota/de caducidad que mostraba el aviso y forzaba la actualización. Se mantuvo el trabajo normal de ciclo de vida de `onResume()` (actualización de estado, receptores y tareas periódicas); al portar, no reemplazar el método entero por uno vacío.

   **Relación con las propiedades de Home:** la eliminación del bloqueo quedó asociada a una regresión observada: dejaron de mostrarse propiedades como el voltaje de batería y el espacio libre del head unit. Al adaptar otra versión, hay que eliminar solamente la rama que decide caducidad y muestra/impone el aviso de actualización. Se deben conservar la suscripción al ciclo de vida, el registro de receptores, el `Handler` y las llamadas que refrescan la interfaz. En la fuente actual, el `onResume()` funcional hace `post(T)`, luego llama a `v1()`, `a1()`, `w1()`, `e1()`, `j1(null, null)`, `f1()` e `i1(this)`; esas llamadas y sus dependencias no se deben borrar al quitar la validación. `e1()` agenda trabajo en el `ExecutorService`, así que también hay que conservar la tarea que consulta y publica propiedades del vehículo. Después de portar, confirmar desde el layout y los callbacks qué rutina concreta alimenta los campos de voltaje y almacenamiento, y que ninguna queda detrás de un `return`/`else` de expiración. Validar ambas tarjetas en el head unit real.

4. **Imagen de fondo de Home.** Se sustituyó la ilustración original del sapo en el auto por la imagen nueva del auto Geely con la mascota. Se ajustó el tamaño/área visible para ocupar el espacio de la ilustración anterior y mantenerla centrada, evitando que cubra toda la pantalla. El recurso de la versión publicada está en [`sapo.png`](https://github.com/RobinHulk/SapoCentralEXAutoFree/blob/main/apktool-test-src/res/drawable-nodpi/sapo.png). Al portar, copiar esa imagen desde la versión recién publicada y revisar el encuadre en la resolución objetivo.

5. **Enlace de GitHub en Home.** Se reemplazó la referencia a Instagram por `github.com/robinhulk` y su icono de GitHub en la pantalla principal.

6. **Icono de inicio en la lista de aplicaciones.** Se sustituyó el icono que aparece en el launcher/lista de apps usando `@mipmap/ic_launcher` y `@mipmap/ic_launcher_round`. En la primera versión la mascota quedaba demasiado pequeña dentro del lienzo; se ajustó el recorte/escala para ampliar la figura y ocupar mejor el área segura del icono sin cortar el auto ni la mascota. La imagen de primer plano usada por el icono está en [`ic_launcher_foreground.png`](https://github.com/RobinHulk/SapoCentralEXAutoFree/blob/main/apktool-test-src/res/mipmap-xxxhdpi/ic_launcher_foreground.png); al portar, copiar también los recursos `ic_launcher*` de las demás carpetas `mipmap-*` y conservar el fondo/adaptive icon. Reemplazar solo una densidad puede dejar recursos antiguos o una figura pequeña en algunos launchers.

7. **Icono de aplicaciones recientes y activas.** Android toma el icono de la actividad/tarea. En esta versión `MainActivity` declara explícitamente `android:icon="@mipmap/ic_launcher"` en el [`AndroidManifest.xml`](https://github.com/RobinHulk/SapoCentralEXAutoFree/blob/main/apktool-test-src/AndroidManifest.xml#L40-L41), por lo que Recientes usa la imagen del punto 6; no hay un PNG separado para Recientes. Al portar, conservar esa declaración y revisar si la nueva versión configura un `ActivityManager.TaskDescription` que la sobrescriba. No confundir este icono con `sapo_icon.png`, que se usa en notificaciones.

8. **Importación de configuración desde EX Sapo Central.** Se agregó en el panel derecho de Home el botón discreto “Importar ajustes de EX Sapo Central”. La tarea copia todos los XML de preferencias compartidas de `com.ex.auto` hacia el paquete Tero, tanto en almacenamiento CE como DE, para el usuario Android activo; no se limita al modo de conducción. Requiere que la app original tenga sus datos presentes y que el mecanismo privilegiado usado por el head unit permita leer/copiar esos archivos.

9. **Aplicación de ajustes importados y recarga completa.** Después de copiar, se extraen/aplican también `saved_drive` y `saved_regen`, se vuelve a ejecutar la lectura/aplicación de modos y se reinicia en frío el proceso de Tero para que los demás ajustes se vuelvan a cargar desde disco. Al portar, conservar la secuencia posterior a la copia, no solo la copia de archivos.

10. **Estado de batería y almacenamiento en Home.** Se conservó/restauró la lógica normal de `onResume()` y las rutinas que consultan/actualizan las tarjetas de estado para evitar la regresión descrita en el punto 3. El espacio libre se pudo mostrar en el emulador; la lectura de batería de 12 V necesita validación en el vehículo, ya que el emulador no expone necesariamente esa propiedad.

11. **Pantalla Apps: color del desplegable.** Se cambió el layout del adaptador del combo que lista APKs para que el texto de las opciones sea negro y legible sobre el fondo claro. Se debe conservar el recurso/layout válido usado por ambas vistas del adaptador.

12. **Pantalla Apps: corrección del cierre.** Se corrigió la referencia de recurso inválida que provocaba `Resources$NotFoundException` al abrir Apps y se apuntaron ambos adaptadores al layout existente. La pantalla Apps se abrió correctamente después del arreglo.

13. **Actualizador propio, canal estable fijo y sin selector de canal.** Se ocultó la opción “Estable/Experimental” de la última pantalla y se fuerza `update_channel=stable`, también para instalaciones que antes habían guardado `experimental`. La comprobación manual y el `CentralWatchdogService` consultan siempre `https://raw.githubusercontent.com/RobinHulk/CentralEXAutoFree/main/exsapocentral.json`. Ese manifiesto debe contener `versionCode`, `versionName`, `apkUrl` y `sha256`; el `apkUrl` apunta a `https://raw.githubusercontent.com/RobinHulk/CentralEXAutoFree/main/TeroCentralFree.apk`. Al publicar una versión, subir el APK firmado con la misma clave y actualizar el manifiesto con la versión y SHA-256 reales. Se retiró además la ruta de actualización del servicio firmado y el manifiesto de bloqueo antiguo para que los dos caminos de actualización usen el feed del fork.

14. **Eliminación del bloqueo por vencimiento.** Se retiró la validación que bloqueaba el inicio por la caducidad de la versión original. Al portar, mantener separado ese bloqueo del flujo de actualización propio descrito en el punto 13.

15. **Construcción y entrega del APK.** La fuente decompilada se recompila con Apktool 2.11 y Java 23 y luego se firma con la clave local de desarrollo. La versión actual de esta sesión es `2.19.78-Tero11`, `versionCode` `685`; el APK local está en `ultimaFree78/apktool-test/TeroCentralFree-2.19.78-Tero11.apk`. La clave original no está en el repositorio, por lo que no es posible producir una firma idéntica a la de EX Sapo Central.

16. **Desactivar actualización automática por defecto.** En la última pantalla de ajustes, dejar apagada (`off`) la opción de actualización automática. Al portar, ubicar el `Switch` y su preferencia asociada, cambiar el valor predeterminado a `false` y confirmar que la interfaz aparezca apagada en una instalación limpia.

17. **Feed de ConnAdaptor del fork.** La descarga del ConnAdaptor usa un único manifiesto para todas las variantes de central y modo: `https://raw.githubusercontent.com/RobinHulk/CentralEXAutoFree/main/connadaptor.json`. El JSON debe publicar `md5` y `apkUrl`; para el APK actual `CAConnect.apk`, el MD5 es `e226ba28395f432d85951c10c4b2fdbe` y la URL es `https://raw.githubusercontent.com/RobinHulk/CentralEXAutoFree/main/CAConnect.apk`. Al publicar una nueva variante, conservar el paquete `com.njda.adapter`, actualizar URL y MD5 y comprobar el modo elegido en el head unit.

18. **Manifiestos del catálogo de Apps en el feed propio.** Las rutas de actualización de Ei Sapo, DualDashcam, ConnAdaptor Logger, Chromium, Amaze File Manager, Firefox y microG se deben consultar en `https://raw.githubusercontent.com/RobinHulk/CentralEXAutoFree/main/` usando sus nombres de JSON (`eisapo.json`, `dualdashcam.json`, `connadaptorlogger.json`, `chromium.json`, `filemanager.json`, `firefox.json`, `microg.json`). El actualizador de DualDashcam y el verificador de dependencias también deben usar el manifiesto RobinHulk. Al portar, mantener un único propietario de feed y validar que cada manifiesto exista y que su `apkUrl` responda.

19. **Feed propio de Capy/Geely Battery.** El catálogo consulta `https://raw.githubusercontent.com/RobinHulk/CentralEXAutoFree/main/geelybattery.json` y descarga `https://raw.githubusercontent.com/RobinHulk/CentralEXAutoFree/main/GeelyBattery.apk`. El manifiesto debe conservar `versionCode`, `versionName`, `apkUrl` y `sha256`; verificar que el paquete siga siendo `com.timhss.geelybattery` y que el hash corresponda al APK publicado.

## Validaciones pendientes al portar

- Confirmar que la importación puede leer las preferencias originales en el head unit real y que se copian también ajustes distintos de los modos de conducción/regeneración.
- Verificar que todos los ajustes importados se reflejan después del reinicio en frío.
- Comprobar los valores de batería y almacenamiento en el vehículo.
- Revisar permisos, autoridades, iconos, pantallas y recursos en la nueva versión; los IDs numéricos de recursos pueden cambiar al recompilar.
- Confirmar qué comprobaciones de caducidad o bloqueo siguen presentes en servicios ajenos a `MainActivity.onResume()` antes de eliminar o conservarlas. Esta guía solo afirma el cambio confirmado en el flujo de inicio.
