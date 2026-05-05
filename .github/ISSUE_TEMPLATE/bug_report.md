---
name: "🐛 Bug report"
description: "File a bug report"
title: "[BUG]"
labels: ["bug"]
body:
  - type: markdown
    attributes:
      value: '---\nThanks for taking the time to file an issue! 🙌'

  - type: textarea
    id: description
    attributes:
      label: "Describe the bug"
      description: "Tell us what happened. Include screenshots if possible."
      placeholder: "A clear and concise description..."
    validations:
      required: true

  - type: textarea
    id: to-reproduce
    attributes:
      label: "To Reproduce"
      description: "Steps to reproduce the behavior."
      placeholder: |
        1. Open frontend/index.html
        2. Login as admin
        3. ...
    validations:
      required: true

  - type: textarea
    id: expected
    attributes:
      label: "Expected behavior"
      description: "What you expected to happen."
      placeholder: "A clear description..."
    validations:
      required: true

  - type: textarea
    id: environment
    attributes:
      label: "Environment"
      description: "Browser, OS, backend server version, etc."
      placeholder: |
        - Frontend: Chrome 120 (frontend/index.html)
        - Backend: Tomcat 10.1 (backend/)
        - OS: Windows 11
    validations:
      required: true

  - type: textarea
    id: additional
    attributes:
      label: "Additional context"
      description: "Anything else we should know?"
      placeholder: "Logs, screenshots, etc."

