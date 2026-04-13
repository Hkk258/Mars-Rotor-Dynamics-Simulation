# Mars-Rotor-Dynamics-Simulation
An open-source framework for Mars rotorcraft design. Validates MATLAB-based BEMT analytical models against high-fidelity OpenVSP geometry simulations. Features Python API automation for ground effect sweeps and Simscape Multibody dynamics to analyze hub joint loads. Ideal for students learning helicopter basics and planetary rotor performance.

[](https://opensource.org/licenses/MIT)
[](https://www.mathworks.com/products/matlab.html)
[](http://openvsp.org/)

## 📖 Overview

This project is an open-source framework designed to help students and engineers understand the fundamentals of rotorcraft aerodynamics and mechanical dynamics. Specifically, it focuses on the **Martian environment**, where low atmospheric density makes lift generation a unique challenge.

The repository provides a complete workflow for:

1.  **Analytical Modeling:** Using Blade Element Momentum Theory (BEMT).
2.  **Geometric Validation:** High-fidelity simulation using OpenVSP & VSPAERO.
3.  **Mechanical Analysis:** Joint-level dynamic response using Simscape Multibody.

## 🚀 Key Learning Features

  * **BEMT Code:** A transparent MATLAB implementation to learn how lift is calculated section-by-section.
  * **OpenVSP Integration:** Learn how to automate aerodynamic sweeps (RPM, Pitch, Ground Effect) using the Python API.
  * **Simscape Multibody:** Understand how aerodynamic thrust translates into mechanical forces and torques at the rotor hub.

## 📂 Repository Structure

  * `/Aerodynamics/MATLAB_BEMT`: Core analytical scripts for thrust/torque prediction.
  * `/Aerodynamics/OpenVSP_Models`: 3D blade geometry and VSP3 files.
  * `/Simulation_Scripts/Python_API`: Automation scripts for ground effect and aspect ratio studies.
  * `/Multibody_Dynamics/Simscape`: Simulink models for mechanical joint analysis.
  * `/Documentation`: Contains the full project report and validation plots.

## 🛠️ Requirements

To run the full suite, you will need:

  * **MATLAB** (with Simulink & Simscape Multibody)
  * **OpenVSP** (v3.x or higher)
  * **Python 3.x** (with `openvsp` and `numpy` libraries)

## 📊 Validation Result

One of the primary goals of this project was to prove that simple analytical BEMT models can be highly accurate. Our results show a strong correlation between **MATLAB (Analytical)** and **OpenVSP (Geometric)** thrust coefficients ($C_T$), validating the physics-based approach for early-stage design.

## 🤝 Contributing

This project is **Open Source**. I started this as my Final Year Project at **IIT Madras / SREC**, and I want the community to take it further\!

  * **Want to simulate Mars?** The constants are already there.
  * **Want to simulate Earth or Titan?** Simply swap the density constants in the BEMT code.
  * **Have experimental data?** Open a Pull Request\!

## 📜 License

Distributed under the MIT License. See `LICENSE` for more information.


**Do you have the MATLAB code and OpenVSP files ready for upload, or do you need help writing a "Quick Start" guide for the code itself?**
