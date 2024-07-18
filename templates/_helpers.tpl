{{- define "opticonomy-node.fullname" -}}
{{- include "opticonomy-node.name" . }}-{{ .Release.Name }}
{{- end -}}

{{- define "opticonomy-node.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}
