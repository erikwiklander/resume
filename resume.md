---
layout: resume
title: Resume
permalink: /resume/
name: Erik Wiklander
headline: Principal Software Engineer / Hands-On Architect
location: Austin, Texas
email: erik@wiklander.org
phone: "+1 512 608 6360"
linkedin: https://www.linkedin.com/in/ewiklander/
---

Hands-on software engineer and architect focused on Java services, data-intensive systems, and delivery automation. At CCC, own architecture and development for insurance systems generating 70 million recommendations daily. Work spans PostgreSQL design, performance optimization, cloud integrations, and tools that help teams build and release software.

## TECHNICAL SKILLS

| | |
| :--- | :--- |
| **Backend and data:** Java, Spring Boot, Python, REST APIs, PostgreSQL, Oracle, Drools | **Cloud and delivery:** AWS (S3, SQS), Azure, Kubernetes, Terraform, Azure DevOps, CI/CD |
| **AI and tooling:** Spring AI, OpenAI integration, Kibana, automated performance testing | **Web:** TypeScript, React, Vue.js, Vite |

## PROFESSIONAL EXPERIENCE

### CCC Intelligent Solutions | Manager, Architecture / Senior Product Architect

April 2020-present

Technical owner for casualty insurance services used by major auto insurers to evaluate bills and generate recommendations. Support 99.5%+ uptime and zero post-delivery rule defects. Manage three direct reports while staying hands-on in architecture and implementation.

- **Reduced large-request processing from 10 minutes to 1 minute** by adding caching and splitting 30,000+ Drools rules into groups executed in parallel across CPU cores.
- **Enabled reference-data updates without downtime** in PostgreSQL datasets with hundreds of millions of rows. Load new versions into inactive partitions, then switch the active partition at release time.
- **Replaced an S3-scanning analytics process that could not keep up with data volume** with an SQS-driven pipeline that transforms JSON uploads into SQL analytics tables, keeping analytics independent of claims processing.
- Automated builds, QA approval notifications, and performance tests for individual rules and the full rule set using de-identified production data. Enabled one to two daily QA deployments and weekly production releases with a 100% success rate.
- Piloting a Spring AI/OpenAI application that lets authors create rules from natural language without knowing the domain model or reference-data queries. Generates Java-based rules and connects Git, builds, and non-production deployment in one web UI.
- Implemented AI-assisted analysis of production logs and timing data in Kibana to diagnose performance bottlenecks and downstream-system issues; share findings with the team through Microsoft Teams.
- Review designs and code, mentor engineers, and set coding standards and automated quality checks. Work with QA, business analysts, and directors to turn requirements into technical decisions and delivered changes.

### Straight Lines Inc. | Senior Consultant

2019-2020

Built a CAD integration for Under Armour's product lifecycle management (PLM) system using Python and Java. Improved test coverage and introduced Spring into VF Corporation's existing Java application.

### Wiklandia International AB | Owner / Senior Consultant

2014-2019

Founded and operated an independent consulting company. Owned client work from requirements and architecture through implementation, integration, and delivery across finance, travel, retail, and manufacturing.

- Architected and led development of a real-time credit-report enhancement platform for UC AB, including bank-facing REST APIs, data modeling, and a partitioned PostgreSQL database.
- Modernized travel and finance applications with Java, Spring Boot, Spring Batch, PostgreSQL, Vue.js, and ETL, combining data analysis, high-volume batch processing, and UI development.
- Independently delivered a cloud-hosted vehicle-inspection application for AGA, covering requirements, data modeling, backend and UI development, and hosting selection.
- Built platform integrations, quality-control workflows, and sample-tracking applications for clients including H&M, Under Armour, Macy's, and Straight Lines Inc.

### Technia Inc. / Technia AB | Senior Consultant / Senior Application Developer

2008-2014

Delivered enterprise PLM systems for retail and engineering clients, including H&M, Macy's, and KLA-Tencor. Work covered data models, integrations, user interfaces, and product workflows. Served as technical lead and Scrum Master at KLA-Tencor and led a distributed development team for H&M.

### Earlier Experience

Software development and consulting roles at Atea Information Management, Mandator, Isydev, and Ericsson, covering enterprise Java applications, database-backed systems, and international application rollouts.

## EDUCATION

**M.Sc., Electrical Engineering**  
KTH Royal Institute of Technology, Stockholm, Sweden

## RECENT PROFESSIONAL DEVELOPMENT

**AWS instructor-led training, October 2026**

- Building Agentic AI with Amazon Bedrock AgentCore
- Building Advanced Agentic Systems on AWS

## LANGUAGES

Swedish - Native; English - Fluent; German - Intermediate
