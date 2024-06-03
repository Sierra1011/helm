{{/*
Expand the name of the chart.
*/}}
{{- define "common.name" -}}
{{- default .Chart.Name .Values.name | trunc 50 | trimSuffix "-" -}}
{{- end }}

{{/* 
Create chart name and version as used by the chart label. 
*/}}
{{- define "common.chart" -}}
    {{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "common.labels" }}
    helm.sh/chart: {{ template "common.chart" . }}
    app: {{ .Values.name | quote }}
    app.kubernetes.io/instance: {{ .Values.name | quote }}
    app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}
