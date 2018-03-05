#! /usr/bin/env sh

LOG_DIRECTORY="${HOME}/.log/jflap"
ERRORS_LOG_FILE="${LOG_DIRECTORY}/errors.log"
LOG_FILE="${LOG_DIRECTORY}/jflap.log"
HEAP_DUMP_FILE="${TMPDIR:-/tmp}/jflap-errors-$$.hprof"


main() {
    mkdir -p "${LOG_DIRECTORY}"

    java -splash:/opt/jflap/assets/splash.png \
         -XX:+HeapDumpOnOutOfMemoryError \
         -XX:-OmitStackTraceInFastThrow \
         -XX:+UnlockDiagnosticVMOptions \
         -XX:SoftRefLRUPolicyMSPerMB=50 \
         -XX:ErrorFile="${ERRORS_LOG_FILE}" \
         -XX:LogFile="${LOG_FILE}" \
         -XX:HeapDumpPath="${HEAP_DUMP_FILE}" \
         -Dsun.java2d.opengl=true \
         -Dsun.io.useCanonCaches=false \
         -Dsun.java2d.renderer=sun.java2d.marlin.MarlinRenderingEngine \
         -jar /opt/jflap/lib/jflap.jar
}

main
