# Experience

## Mechatronics Laboratory at Hanyang University

### Engineer Intern | December 2017–June 2018

#### Context and mandate

I completed an undergraduate engineering internship in a mechatronics laboratory at Hanyang University. I worked on a robotic-arm remote-control project using arm-mounted inertial sensing; the same project is recorded as my undergraduate capstone.

#### Responsibilities and decisions

The project used STM32 microcontrollers, MPU9250 inertial sensing, quaternion-based extended Kalman filtering, wireless communication, and MATLAB or LabVIEW tooling. Across the broader project period, the implementation combined sensor calibration, orientation estimation, wireless data transfer, and visualization.

#### Contributions and outcomes

The internship established the laboratory context for the [undergraduate capstone](education.md#undergraduate-capstone), which continued through September 2018.

#### Growth and continuity

This experience gave me an early foundation in embedded systems, sensor fusion, and hardware–software integration. It also established a pattern that continued throughout my career: working across boundaries rather than treating firmware, communication, and user-facing tooling as separate problems.

## Freelance

<a id="freelance-engineer"></a>

### Freelance Engineer | September 2018–May 2021

#### Context and mandate

I worked independently across embedded firmware, device integration, Linux application development, and edge-ML experimentation.

#### Responsibilities and decisions

I developed reusable C++ communication components for AVR and STM32 platforms, covering I2C, SPI, and interrupt-driven UART. As the work broadened, I built microcontroller firmware and embedded Linux GUI applications in Flutter and Python/Qt that customers used to control their machines. I connected the applications to hardware interfaces and also adapted existing ML runtime code for edge-oriented use.

#### Contributions and outcomes

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

#### Contributions and outcomes

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

I developed a hit-discovery pipeline alongside scientific Python tooling that organized research programs into reusable, command-line workflows. The tooling provided a structure for integrating additional researcher-developed programs, and I contributed to neural-network research alongside the software work. I treated packaging, executable orchestration, and handoff as part of the engineering problem rather than as afterthoughts.

#### Contributions and outcomes

The work produced reusable internal tooling and a handoff path for continued development by other engineers and researchers.

#### Growth and continuity

This role translated my systems background into a research-software setting. It developed my ability to turn specialist code into maintainable workflows and created a bridge from hands-on scientific tooling to the broader platform and reliability responsibilities of my next HITS role.

<a id="hits-lead-software-engineer"></a>

### Lead Software Engineer | May 2022–December 2023

#### Context and mandate

My title changed to Lead Software Engineer in May 2022. The role broadened my scope across scientific software, infrastructure delivery, reliability practices, engineering workflows, and shared platform capabilities.

#### Responsibilities and decisions

I worked on infrastructure as code, Kubernetes and cloud resources, deployment automation, GitOps-oriented delivery, monitoring and logging, identity and access, and support for constrained operating environments. I also developed an authentication gateway as a shared access-control component for platform services. I helped establish more consistent practices around planning, design documentation, code review, reporting, and shared knowledge. I also helped connect research-developed software and models to platform services and calculation pipelines, adapting technical approaches when initial serving strategies did not meet requirements.

#### Contributions and outcomes

I combined hands-on implementation with shared process and platform responsibilities. My work covered infrastructure delivery, observability, reusable platform integration, and improvements to engineering practice.

#### Growth and continuity

This stage expanded my work from building individual scientific tools to shaping the systems and practices around their delivery. It deepened my experience in reliability and platform engineering while introducing a more explicit responsibility for coordination, review, and shared technical direction.
