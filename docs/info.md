<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This project is a single‑ended (SE) operational amplifier implemented as a two‑stage CMOS amplifier with on‑chip biasing and Miller (compensation) capacitor. In summary:

- Input stage: single‑ended input feeding a differential/common‑source input device with an active current‑mirror load to convert input current to a voltage.
- Second (gain) stage: common‑source amplifier providing most of the DC gain.
- Compensation: Miller capacitor between stages for stability and phase‑margin control.
- Bias: simple current reference/bias network supplies tail and load currents to set operating point.
- Output stage: high‑impedance output node intended to drive external load or follow with a buffer depending on system needs.

Design goals: high DC gain, moderate unity‑gain bandwidth, stable closed‑loop behaviour with common feedback compensation, low quiescent power for the target process corner.

## How to test

Simulate and verify the design using your preferred SPICE/CAD tool (Cadence Spectre, ngspice, or similar). Typical verification steps:

1. Prepare testbench
   - Include power rails (VDD, VSS), bias generator, input source, and a 1× feedback network (or closed‑loop load) for closed‑loop tests.
   - Add probe nodes for input, output, and internal nodes (gain stage output, bias nodes).

2. Basic simulations
   - Operating point: .op (check bias currents, node voltages)
   - DC sweep: sweep input common‑mode to check input range and output swing
   - AC analysis: .ac dec 100 1 1e8 — extract small‑signal gain, phase, unity‑gain frequency and phase margin
   - Transient: .tran 1n 10u with a step/sine input — measure slew rate, settling time, and transient response
   - Noise (if supported): input‑referred noise over target band

3. Characterisation and measurements
   - Measure open‑loop DC gain (Av = vout/vin), CMRR (if differential elements present), PSRR.
   - Measure unity‑gain frequency (fT), phase margin (PM), and gain‑bandwidth (GBW).
   - Measure input offset (mismatch), input bias currents, output drive into a defined load (e.g., 10 kΩ or 1 kΩ).
   - Run Monte Carlo and corner (TT, FF, SS, temperature) sweeps to verify robustness.

4. Example ngspice style commands (adapt to your simulator)
   - .op
   - .dc VIN -0.5 0.5 1m
   - .ac dec 100 1 100Meg
   - .tran 1n 10u uic
   - .step param temp -40 125 85
   - .measure ac Av_max max mag(V(out)/V(in))
   - .measure tran slew TRIG V(in) VAL=0.1 RISE=1 TD=0, etc.

5. Silicon / board tests (if fabricated)
   - Provide clean power supplies (decoupling caps), a low‑noise signal source, and measurement equipment: low‑noise amplifier, oscilloscope, network analyzer for S21/AC tests, and a precision multimeter for DC currents/voltages.

## External hardware

- None required for simulation‑only verification.
- For bench testing of a fabricated chip:
  - Stable DC power supply (VDD, VSS)
  - Signal generator (sine/step)
  - Oscilloscope or network analyzer
  - Passive load (resistors, capacitors) and decoupling capacitors
  - Optional: PCB breakout or carrier board, probe station for wafer probe
