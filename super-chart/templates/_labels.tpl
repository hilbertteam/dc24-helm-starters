{{/* Common labels */}}
{{- define "<CHARTNAME>.labels" -}}
helm.sh/chart: {{ include "<CHARTNAME>.version" . }}
{{ include "<CHARTNAME>.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/* Common selector labels */}}
{{- define "<CHARTNAME>.selectorLabels" -}}
app.kubernetes.io/name: {{ include "<CHARTNAME>.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/* Common selector labels */}}
{{- define "<CHARTNAME>.common.selectorLabels" -}}
{{ include "<CHARTNAME>.selectorLabels" . }}
app.kubernetes.io/component: common
{{- end }}

{{/* Common labels */}}
{{- define "<CHARTNAME>.common.labels" -}}
{{ include "<CHARTNAME>.labels" . }}
app.kubernetes.io/component: common
{{- end }}
