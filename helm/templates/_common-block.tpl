{{- define "appImage" }}
- name: {{ .Release.Name }}
  image: {{ .Values.app.repository }}/{{ .Values.app.imageName }}:{{ .Values.app.tag | default "latest" }}
  ports:
    - containerPort: {{ .Values.app.port }}
{{- end }}

