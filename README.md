# SI-2026-Analaog_IC_DESIGN-SU
 🗄️ Repository for summer internship 2026 "Analog and IC Design"
# 📝 Abstract
This repository documents my Summer Internship 2026 at Silicon University's Advanced VLSI Lab, focusing on the design, simulation, and layout of Analog Integrated Circuits (ICs). The internship provided hands-on experience with industry-standard EDA tools and covered key concepts such as CMOS device operation, analog circuit design, schematic simulation, and physical layout implementation. Through a series of practical experiments and projects, I gained exposure to the complete analog IC design flow, including verification and performance analysis. The program emphasized both theoretical understanding and real-world application, helping me develop essential skills in VLSI and semiconductor engineering. This experience strengthened my foundation in analog IC design and prepared me for future challenges in the semiconductor industry.


# 📚 Introduction
Participating in the Analog Integrated Circuit (IC) Design Summer Internship 2026 (SI-2026-AnalogIC) at Silicon University's Advanced VLSI Lab, gaining hands-on experience in analog circuit design, simulation, and physical layout development. The internship involved working with Xschem, Ngspice, Magic VLSI, ADALM 2000, and the Skywater 130nm PDK to design, analyze, simulate, and verify analog circuits. I also learned IC layout design using Magic VLSI, gaining practical exposure to the complete analog VLSI design flow from schematic creation to layout verification.

#  Internship Details

- 📆 **DURATION**: May 25th till June 13th (3 weeks, Mon-Fri)
- ⏲️ **TIMINGS**:
  - Session-1: 🕙 **10:00am - 1:00pm**
  - Session-2: 🕝 **2:00pm - 5:00pm**
- 🏛️ **VENUE**: VLSI Lab 
- 👨‍🏫 **RESOURCE PERSONS**:
  - [Dr. Saroj Rout]and [Prof. Prasant Swain] *ECE*, *Silicon University*
  - [Dr. Santunu Sarangi] *Technical Lead & Site Head, Sevya Multimedia, Bhubaneswar*

# Course Outcomes

* Developed skills in the design, analysis, and modeling of analog circuits for electronic system applications.
* Validated theoretical concepts through laboratory experiments and circuit simulations.
* Gained a strong understanding of CMOS devices, fabrication technology, and analog IC design fundamentals.
* Acquired hands-on experience with industry-relevant open-source EDA tools, including Xschem, Ngspice, and Magic VLSI for circuit design and layout development.
  

# 🧠 What is Analog IC Design?

Analog IC Design is a branch of electronics engineering focused on designing integrated circuits that process continuous signals, such as voltage, current, or frequency. Unlike digital circuits that handle binary logic (0s and 1s), analog circuits deal with real-world, varying signals like audio, radio waves, or sensor outputs.

### 🔍 Why Analog IC Design?
- Real-World Interface: Bridges the gap between physical signals and digital systems
- Power Efficiency: Crucial for low-power and high-performance applications
- Signal Fidelity: Maintains the accuracy of sensitive signals, like ECG or RF

### Typical Applications
- 🎧 Audio amplifiers
- 📡 RF front-ends (radios, wireless systems)
- 🔋 Power management (LDOs, DC-DC converters)
- 📷 Sensor readout circuits (e.g., image or temperature sensors)
- 🔗 Signal conversion (ADC/DAC interfaces)

## 🛠️ Tools Used
<ul>
    <li>Magic VLSI, Xschem, ngspice (Open-source EDA) 🧰</li>
    <li>Python/Matlab (Data analysis) 📊</li>
    <li>Skywater 130nm PDK 🏭</li>
</ul>

# 🎤 What is a MEMS Microphone?

A MEMS microphone (Micro-Electro-Mechanical Systems microphone) is a tiny microphone built using semiconductor fabrication techniques. It converts acoustic pressure (sound) into an electrical signal using a microscale diaphragm and capacitive sensing—all integrated on a silicon chip.

<img width="778" height="410" alt="MEMS" src="https://github.com/user-attachments/assets/725762a8-2163-4d5c-a789-c7044905ab21" />


## 💡 How It Works

A thin diaphragm vibrates when sound waves hit it.
These vibrations change the capacitance between the diaphragm and a fixed backplate.
An integrated ASIC (Application-Specific Integrated Circuit) senses this change and outputs an electrical signal, either analog or digital.

## 🏗️MEMS USB Microphone
- **SPL to Pressure Conversion**:

$Pressure (Pa) = 10^{\frac{60 - 94}{20}} = 19.95 \times 10^{-3} \ Pa$

- **Output Voltage (Peak):**

$V_{out(peak)} = 2 \times 19.95 \times 10^{-3} \times 10^{\frac{-44}{20}} = \mathbf{0.178 \ mV_{pk}}$


### Schematic

<img width="1799" height="917" alt="image" src="https://github.com/user-attachments/assets/6ba7c98e-0302-4851-8ae8-2d3180e895bf" />


## Laplace-Domain Analysis of Microphone

<img width="1314" height="1401" alt="laplace domain analysis" src="https://github.com/user-attachments/assets/5af73271-55a6-467e-9dee-e5887c5fae1c" />







# 📚 Resources

## Useful Docs:
- [Skywater PDK Manual](https://github.com/silicon-vlsi/SI-2026-AnalogIC/blob/main/docs/skywater-pdk-readthedocs-io-en-main.pdf)
- [OPA344 Datasheet](https://www.ti.com/lit/ds/symlink/opa344.pdf)
- [MEMS Microphone Datasheet](https://cdn.sparkfun.com/assets/0/5/8/b/1/SPH8878LR5H-1_Lovato_DS.pdf)
- [Schematic: Sparkfun breakout board](https://cdn.sparkfun.com/assets/7/5/6/e/d/SparkFun_Analog_MEMS_Microphone_Breakout_SPH8878LR5H-1.pdf)
- [SI-2025-AnalogIC](https://github.com/silicon-vlsi/SI-2025-AnalogIC)
- Schematic/Layout Tutorials (Xschem, ngspice, Magic)



# 🙏 Acknowledgments:
This program would not have been possible without the guidance and support of my mentors *Dr. Saroj Rout* and teammates .Your expertise and encouragement have been instrumental in my learning and development.

Here is the link of full course described by Dr. Saroj Rout https://github.com/silicon-vlsi/SI-2026-AnalogIC


# 📄 License
MIT License

“Analog design is where art meets engineering.” 🎨⚙️













