---
name: "✨ Feature request"
description: "Request a new feature"
title: "[FEATURE]"
labels: ["enhancement"]
body:
  - type: markdown
    attributes:
      value: '---\nLove UniTrips? Suggest a new feature! 🚀'

  - type: textarea
    id: summary
    attributes:
      label: "Feature summary"
      description: "Brief description of the feature."
      placeholder: "e.g. Add user authentication to backend JSP"
    validations:
      required: true

  - type: dropdown
    id: area
    attributes:
      label: "Area"
      description: "Which part of the project?"
      options:
        - "Frontend (SPA dashboard)"
        - "Backend (JSP app)"
        - "Docs/Website"
        - "Other"
    validations:
      required: true

  - type: textarea
    id: motivation
    attributes:
      label: "Motivation"
      description: "Why is this valuable?"
      placeholder: "Benefits for users/admins..."

  - type: textarea
    id: implementation
    attributes:
      label: "Suggested implementation"
      description: "High-level approach (optional)"
      placeholder: "API changes, UI screens..."

  - type: textarea
    id: alternatives
    attributes:
      label: "Alternatives considered"
      placeholder: "Other solutions tried..."

  - type: checkboxes
    id: blockers
    attributes:
      label: "Additional context"
      options:
        - label: "I'd like to work on this"
        - label: "Has design mockups"
        - label: "Has technical spec"

