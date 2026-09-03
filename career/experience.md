# Experience

## Mechatronics Laboratory at Hanyang University

### Engineer Intern | December 2017–June 2018

#### Context and mandate

I completed an undergraduate engineering internship in a mechatronics laboratory at Hanyang University. I worked on a robotic-arm remote-control project using arm-mounted inertial sensing; the same project is recorded as my undergraduate capstone.

#### Responsibilities and decisions

The project used STM32 microcontrollers, MPU9250 inertial sensing, quaternion-based extended Kalman filtering, wireless communication, and MATLAB or LabVIEW tooling. Across the broader project period, the implementation combined sensor calibration, orientation estimation, wireless data transfer, and visualization.

#### Selected contributions

The internship established the laboratory context for the [undergraduate capstone](education.md#undergraduate-capstone), which continued through September 2018.

#### Growth and continuity

This experience gave me an early foundation in embedded systems, sensor fusion, and hardware–software integration. It also established a pattern that continued throughout my career: working across boundaries rather than treating firmware, communication, and user-facing tooling as separate problems.

## Freelance

<a id="freelance-engineer"></a>

### Freelance Engineer | September 2018–May 2021

#### Context and mandate

I worked independently across embedded firmware, device integration, Linux application development, and edge-ML experimentation. This freelance period overlapped with my HARDKERNEL role from June 2019 to July 2020.

#### Responsibilities and decisions

I developed reusable C++ communication components for AVR and STM32 platforms, covering I2C, SPI, and interrupt-driven UART. As the work broadened, I built microcontroller firmware and embedded Linux GUI applications in Flutter and Python/Qt that customers used to control their machines. I connected the applications to hardware interfaces and also adapted existing ML runtime code for edge-oriented use.

#### Selected contributions

The public work from this period includes reusable communication libraries for AVR and STM32 platforms, control applications, Linux device-integration plugins, and [TensorFlow YOLOv4 fork and package work](https://github.com/hhk7734/tensorflow-yolov4). Together, these artifacts show a progression from low-level communication code to complete hardware-control paths, customer-facing applications, and edge-ML work.

#### Growth and continuity

This period broadened my systems foundation from embedded communication into Linux integration, user-facing control software, and ML runtime engineering. It taught me to connect low-level interfaces with the applications and workflows through which people operate technical systems.

## HARDKERNEL

<a id="hardkernel-software-engineer"></a>

### Software Engineer | June 2019–July 2020

#### Context and mandate

I worked as a Software Engineer at HARDKERNEL, focusing on ODROID Linux and hardware–software enablement. The role moved my work from microcontroller-focused firmware into Linux kernel changes, board support, configuration tooling, and collaboration with upstream open-source projects.

#### Responsibilities and decisions

I authored a Linux pin-control fix for drive-strength calculations across GPIO banks that span multiple registers, and contributed ODROID-C4 and ODROID-XU4 support to Adafruit Blinka together with related GPIO and bus integration.

#### Selected contributions

Selected public work from this role includes:

- [tty0uart](https://github.com/hhk7734/tty0uart) — null-modem emulator connecting a virtual TTY to a virtual UART.
- [Oduino](https://github.com/hhk7734/oduino) — Arduino core for ODROID.
- [odroid-config](https://github.com/hhk7734/odroid-config) — ODROID configuration utility.
- [Odroid.GPIO](https://github.com/hhk7734/Odroid.GPIO) — Python GPIO library for ODROID boards with an `RPi.GPIO`-compatible import path.
- [Upstream Linux pin-controller fix](https://github.com/torvalds/linux/commit/f088ab6d4f4ce49d422c220074b7e605f54e2299)
- Accepted ODROID board support in Adafruit Blinka [PR #265](https://github.com/adafruit/Adafruit_Blinka/pull/265) and [PR #294](https://github.com/adafruit/Adafruit_Blinka/pull/294)

#### Growth and continuity

This role extended my embedded foundation into Linux kernel and user-space systems. It also gave me practical experience working across vendor repositories, personally maintained tools, and upstream communities—an early form of the cross-component coordination that became central in later platform roles.

## HITS

<a id="hits-software-engineer"></a>

### Software Engineer | May 2021–May 2022

#### Context and mandate

I joined HITS as a Software Engineer and shifted the center of my work toward scientific software and applied machine learning. My role focused on making research software easier to install, run, and extend.

#### Responsibilities and decisions

I helped scientists convert their research code into Python packages for execution on Slurm. I developed a hit-discovery pipeline as part of that work. The tooling provided a structure for integrating additional researcher-developed programs, and I contributed to neural-network research alongside the software work. I treated packaging, executable orchestration, and handoff as part of the engineering problem rather than as afterthoughts.

#### Selected contributions

The work produced reusable internal tooling and a handoff path for continued development by other engineers and researchers.

#### Growth and continuity

This role translated my systems background into a research-software setting. It developed my ability to turn specialist code into maintainable workflows and created a bridge from hands-on scientific tooling to the broader platform and reliability responsibilities of my next HITS role.

<a id="hits-lead-software-engineer"></a>

### Lead Software Engineer | May 2022–December 2023

#### Context and mandate

My title changed to Lead Software Engineer in May 2022. The role broadened my scope across scientific software, infrastructure delivery, reliability practices, engineering workflows, and shared platform capabilities.

#### Responsibilities and decisions

As HITS moved the platform from Slurm to Kubernetes, I converted scientific workloads into Argo Workflows. A single pipeline could use hundreds of Amazon EC2 instances concurrently.

When HITS decided to offer the platform as a SaaS product, I led the development of [HyperLab](https://hyperlab.ai/), its AI drug-discovery platform. I worked on infrastructure as code, Kubernetes and cloud resources, deployment automation, GitOps-oriented delivery, monitoring and logging, identity and access, and support for constrained operating environments. I also developed an authentication gateway as a shared access-control component for platform services.

I helped establish more consistent practices around planning, design documentation, code review, reporting, and shared knowledge. I also helped connect research-developed software and models to platform services and calculation pipelines, adapting technical approaches when initial serving strategies did not meet requirements.

#### Selected contributions

My hands-on implementation spanned DevOps, backend, and frontend work. I worked primarily on DevOps and backend development and provided partial support for frontend development. I combined this implementation work with shared process and platform responsibilities, covering infrastructure delivery, observability, reusable platform integration, and improvements to engineering practice.

#### Growth and continuity

This stage expanded my work from building individual scientific tools to shaping the systems and practices around their delivery. It deepened my experience in reliability and platform engineering while introducing a more explicit responsibility for coordination, review, and shared technical direction.

## Moreh

At Moreh, I have worked with on-premises infrastructure using AMD Instinct MI250, MI300X, MI308X, and MI355X accelerators. I have also worked with on-premises Ceph storage clusters. My network experience includes Layer 2 and Layer 7 load balancing in on-premises environments, with ARP- and BGP-based configurations.

<a id="moreh-devops-engineer"></a>

### DevOps Engineer | January 2024–March 2025

#### Context and mandate

I joined Moreh as a DevOps Engineer, focusing on hands-on platform engineering. My work spanned Kubernetes deployment and lifecycle management, infrastructure as code, GitOps, CI/CD, observability, storage, identity and access, migrations, documentation, and operational troubleshooting.

#### Responsibilities and decisions

I worked on cluster deployments and lifecycle changes, infrastructure and deployment configuration, repeatable release practices, monitoring and logging, storage and access, and day-to-day troubleshooting. I also helped turn deployment and cluster operations knowledge into reusable configuration, automation, and documentation.

#### Selected contributions

I migrated infrastructure and access configuration into Terragrunt modules and expanded GitOps-managed deployment paths for cluster services, storage, observability, and identity. These changes put more platform state under versioned configuration and made recurring deployment changes more repeatable.

#### Growth and continuity

This role extended my earlier cloud and platform experience into sustained Kubernetes operations. It connected infrastructure changes with repeatable delivery and documented operational knowledge, which I carried into the DevOps Team Lead role.

<a id="moreh-devops-team-lead"></a>

### DevOps Team Lead | March 2025–July 2025

#### Context and mandate

I served as DevOps Team Lead during a short transition period. I remained hands-on while coordinating work across cluster lifecycle, networking, storage, monitoring, and software delivery.

#### Responsibilities and decisions

I contributed directly to platform upgrades, deployment automation, operational policy, infrastructure changes, documentation, and troubleshooting across multiple engineering environments. I balanced hands-on implementation with coordination across connected platform areas.

#### Selected contributions

During this period, I contributed directly to migrating Layer 2 load-balancing configurations to BGP across multiple environments, upgrading Ceph and related cluster services, and retiring or simplifying obsolete platform components.

#### Growth and continuity

This role moved my focus from individual platform execution toward technical coordination and operational leadership. I stayed technically engaged but spent more time on priorities, dependencies, operating policy, and how work moved across the team.

<a id="moreh-product-team-lead"></a>

### Product Team Lead | July 2025–Present

#### Context and mandate

As Product Team Lead, I lead product and technical work for a team building distributed-inference products and the platform capabilities used to deploy, route, operate, and validate model-serving workloads. I led the [MoAI Inference Framework](https://moreh.io/inference-framework/) from its initial design through implementation.

#### Responsibilities and decisions

My role combines product prioritization, cross-component coordination, technical decisions, release and validation planning, and hands-on engineering. I set priorities and sequence work across connected areas. Component owners retain day-to-day technical ownership, and code owners retain final review authority. I also turn product and ecosystem signals into scoped work and cross-team decisions.

My hands-on focus in this role has shifted from DevOps work toward complex software systems. I have spent much of my implementation time developing a Rust-based AI inference gateway and Kubernetes operators in Go. I also contribute directly to inference API compatibility, request routing, deployment workflows, observability, and conformance validation. The balance between leadership and implementation depends on the problem.

#### Selected contributions

My direct software contributions included token-in/token-out processing and a smart routing system for multiple models, alongside compatibility work for chat, response, and message-oriented inference APIs, streaming, and tool calling. I also contributed Kubernetes operator changes that surfaced deployment failures and added explicit reconciliation controls.

#### Growth and continuity

This role combines systems engineering, platform reliability, product judgment, technical leadership, and hands-on implementation. At Moreh, my scope has moved from DevOps engineering through DevOps team leadership to product and technical leadership for distributed-inference systems.
