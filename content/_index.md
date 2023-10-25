---
# Leave the homepage title empty to use the site title
title: Kai Katsumata
date: 2023-10-25
type: landing

sections:
  - block: about.biography
    id: about
    content:
      title: Biography
      # Choose a user profile to display (a folder name within `content/authors/`)
      username: admin
  - block: markdown
    id: section-1
    content:
      title: News
      text: <h3>2023</h3> 3 papers habe been accepeted by WACV 2024.
    design:
      # Choose how many columns the section has. Valid values: '1' or '2'.
      columns: '1'
  - block: experience
    content:
      title: Experience
      # Date format for experience
      #   Refer to https://wowchemy.com/docs/customization/#date-format
      date_format: Jan 2006
      # Experiences.
      #   Add/remove as many `experience` items below as you like.
      #   Required fields are `title`, `company`, and `date_start`.
      #   Leave `date_end` empty if it's your current employer.
      #   Begin multi-line descriptions with YAML's `|2-` multi-line prefix.
      items:
        - title: Research Intern
          company: Preferred Networks Inc.
          company_url: ''
          <!-- company_logo: org-gc -->
          location: Tokyo
          date_start: '2022-08-01'
          date_end: '2022-09-01'
        - title: Part-time Software Engineer
          company: Idein Inc.
          company_url: ''
          <!-- company_logo: org-x -->
          location: Tokyo
          date_start: '2017-04-01'
          date_end: '2021-04-01'
          <!-- description: Taught electronic engineering and researched semiconductor physics. -->
    design:
      columns: '2'
#  - block: collection
#    id: featured
#    content:
#      title: Featured Publications
#      filters:
#        folders:
#          - publication
#        featured_only: true
#    design:
#      columns: '2'
#      view: card
  - block: collection
    id: publications
    content:
      title: Recent Publications
      text: |-
        {{% callout note %}}
        Quickly discover relevant content by [filtering publications](./publication/).
        {{% /callout %}}
      filters:
        folders:
          - publication
#        exclude_featured: true
    design:
      columns: '2'
      view: citation
  - block: accomplishments
    content:
      # Note: `&shy;` is used to add a 'soft' hyphen in a long heading.
      title: Awards
      subtitle:
      # Date format: https://wowchemy.com/docs/customization/#date-format
      date_format: Jan 2006
      # Accomplishments.
      #   Add/remove as many `item` blocks below as you like.
      #   `title`, `organization`, and `date_start` are the required parameters.
      #   Leave other parameters empty if not required.
      #   Begin multi-line descriptions with YAML's `|2-` multi-line prefix.
      items:
        - # certificate_url: https://www.coursera.org
          # date_end: ''
          date_start: '2023-04-01'
          description: ''
          # organization: Coursera
          # organization_url: https://www.coursera.org
          title: German Academic Exchange Service (DAAD) AInet fellow
          url: ''
        - title: Japan Society for the Promotion of Scienece (JSPS) Research Fellowship for Young Scientists (DC2)
          date_start: '2023-04-01'
          url: ''
        - title: Japan Student Services Organization (JASSO) Repayment Exemption for Students with Excellent Grades --FY2022--, Type I (interest-free) scholarship (Exemption of all of loan)
          date_start: '2023-03-31'
    design:
      columns: '2'
---
