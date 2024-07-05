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
      text: <h3>2024</h3> Our paper "A Compact Dynamic 3D Gaussian Representation for Real-Time Dynamic View Synthesis" have been accepted at ECCV 2024. <br> I will attend [International Computer Vision Summer School 2024](https://iplab.dmi.unict.it/icvss2024/).  <h3>2023</h3> 3 papers have been accepeted at WACV 2024.
    design:
      # Choose how many columns the section has. Valid values: '1' or '2'.
      columns: '1'
  - block: collection
    id: publications
    content:
      title: 
      text: |-
        <h1> Recent Publications </h1>
        {{% callout note %}}
        Quickly discover relevant content by [filtering publications](./publication/).
        {{% /callout %}}
      count: 10
      filters:
        folders:
          - publication
#        exclude_featured: true
    design:
      columns: '1'
      view: citation
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
          company: Preferred Networks # Inc.
          company_url: ''
          description: Research in human image generation and visual artifact removal.
          <!-- company_logo: org-gc -->
          location: Tokyo
          date_start: '2022-08-01'
          date_end: '2022-09-01'
        - title: Part-time Software Engineer
          company: Idein # Inc.
          company_url: ''
          <!-- company_logo: org-x -->
          location: Tokyo
          date_start: '2017-04-01'
          date_end: '2021-04-01'
          description: Developed face landmark detection algorithm
          <!-- description: Taught electronic engineering and researched semiconductor physics. -->
        - title: Research Intern
          company: SenseTime # Group Ltd.
          location: Beijing and Tokyo
          date_start: '2018-02-01'
          date_end: '2018-06-01'
          description: Research in unsupervised image-to-image translation for data augmentation
        - title: AI Research and Development Intern
          company: DeNA # Co., Ltd.
          location: Tokyo
          date_start: '2017-08-01'
          date_end: '2017-09-01'
          description: Research in realtime superresolution
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
        - title: Microsoft Research Asia D-CORE Award
          date_start: '2022-12-01'
          url: ''
        - title: Toyota/Dwango AI Scholarship
          date_start: '2021-04-01'
          url: ''
        - title: JEES/Softbank AI Scholarship
          date_start: '2020-04-01'
          url: ''
    design:
      columns: '2'
---

