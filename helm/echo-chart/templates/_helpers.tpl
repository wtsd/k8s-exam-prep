{{- define "echo-chart.labels" -}}
app.kubernetes.io/name: {{ include "echo-chart.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

{{- define "echo-chart.selectorLabels" -}}
app.kubernetes.io/name: {{ include "echo-chart.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

{{- define "echo-chart.name" -}}
{{- .Chart.Name -}}
{{- end -}}

{{- define "echo-chart.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "echo-chart.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}
