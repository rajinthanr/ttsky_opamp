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

Note: this is for bench (post‑fabrication) testing of the fabricated IC. Use a PCB breakout or carrier board to access pins, and follow safe power‑up and ESD practices.

Setup summary
- Power rails
   - VDD = 1.8 V, VSS = 0 V. Use a current‑limited DC supply (start with limit ≈ 5–10 mA).
   - Place local decoupling: 0.1 µF (ceramic) + 10 µF (electrolytic/MLCC) close to VDD–VSS pins.

- Bias / enable
   - Iref: inject 5 µA into the Iref pin using a precision current source or SMU set to 5 µA. If a current source is not available, use a resistor only if you know the Iref pin bias voltage; otherwise prefer the precision source.
   - EN: tie EN to VDD (1.8 V) to enable the amplifier. Provide a clean logic/high drive; you can also test disable by pulling EN to 0 V.

- Closed‑loop (voltage follower)
   - Short Vout to Vp externally with a wire or 0 Ω jumper. Optionally place a small series resistor (10–100 Ω) between the generator and Vp for source isolation.

Stimulus and measurement
- Input stimulus
   - Function generator: DC offset 0.9 V, 0.4 Vpp (±0.2 V amplitude), sine up to 4 MHz.
   - Use a DC‑coupled source or combine a DC offset and AC coupling as needed. If the generator is 50 Ω, add a series resistor/isolation pad and account for loading.
- Probing
   - Probe Vout (and Vp — they are shorted) with a scope. Prefer differential probes or ensure correct ground referencing to avoid shorting the board ground.
   - Monitor supply current (I(VDD)) and Iref. Measure internal nodes if breakout provides access.
- Recommended instruments
   - Precision current source / SMU (for Iref)
   - Current‑limited DC supply for VDD
   - Function generator (DC + AC)
   - Oscilloscope (2+ channels, differential probes recommended)
   - Network analyzer / lock‑in or spectrum analyzer (for small‑signal AC/Bode)
   - Optional: probe station, temperature chamber, LCR meter


Example bench connection notes
- VDD -> regulated supply (1.8 V, current limit)
- VSS -> ground
- EN -> VDD (1.8 V)
- Iref -> 5 µA current source to Iref pin
- Vp <— shorted to —> Vout (wire/jumper)
- Vin (function generator) -> Vp through optional series resistor (10–50 Ω or 50 Ω if source is matched)
- Probe Vout with oscilloscope (and probe supplies/other nodes as needed)

Follow these steps to validate the fabricated IC on the bench and compare measured results to simulation. Record all measurements and environmental conditions for traceability.

## External hardware

- Bench testing (fabricated chip)
   - Regulated DC supply for VDD (1.8 V) with adjustable current limit (start ≈ 5–10 mA).
   - Precision current source or SMU for Iref (able to source 1–10 µA accurately).
   - Function generator (DC offset + AC, up to several MHz) or low‑noise waveform source.
   - Oscilloscope (2+ channels); differential probes recommended for floating nodes.
   - Network analyzer / lock‑in / spectrum analyzer for small‑signal and frequency measurements (optional but useful).
   - Precision multimeter for DC voltages and currents.
   - Passive components: resistors for loads (10 Ω–1 MΩ as needed), decoupling capacitors (0.1 µF ceramic + 10 µF bulk).
   

- Practical notes
   - Place decoupling caps close to VDD–VSS pins; use current limiting on initial power‑up.
   - Use a precision current source for Iref when possible; avoid guessing resistor values unless pin bias voltage is known.
   - Start tests with conservative stimulus amplitudes and monitor supply current for abnormal draw.
