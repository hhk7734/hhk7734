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

I developed reusable C++ communication components for AVR and STM32 platforms, covering I2C, SPI, and interrupt-driven UART. As the work broadened, I built microcontroller firmware and embedded Linux GUI applications in Flutter and Python that customers used to control their machines. I connected the applications to hardware interfaces and also adapted existing ML runtime code for edge-oriented use.

#### Contributions and outcomes

The public work from this period includes reusable communication libraries for AVR and STM32 platforms, control applications, Linux device-integration plugins, and contributions to an existing TensorFlow model-runtime fork. Together, these artifacts show a progression from low-level communication code to complete hardware-control paths and edge application work.

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
- [TensorFlow YOLOv4 fork and package work](https://github.com/hhk7734/tensorflow-yolov4)
- [Upstream Linux pin-controller fix](https://github.com/torvalds/linux/commit/f088ab6d4f4ce49d422c220074b7e605f54e2299)
- Accepted ODROID board support in Adafruit Blinka [PR #265](https://github.com/adafruit/Adafruit_Blinka/pull/265) and [PR #294](https://github.com/adafruit/Adafruit_Blinka/pull/294)

#### Growth and continuity

This role extended my embedded foundation into Linux kernel and user-space systems. It also gave me practical experience working across vendor repositories, personally maintained tools, and upstream communities—an early form of the cross-component coordination that became central in later platform roles.
