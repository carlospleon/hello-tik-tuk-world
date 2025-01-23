{{- define "hello-world.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "hello-world.serviceAccountName" -}}
{{- if .Values.serviceAccount.create -}}
{{- .Release.Name }}-{{ .Chart.Name }}-sa
{{- else -}}
{{- .Values.serviceAccount.name | quote }}
{{- end -}}
{{- end -}}