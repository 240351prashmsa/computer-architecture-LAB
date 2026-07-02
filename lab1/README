# Lab 1: Introduction to VHDL Programming and Open-Source Simulation Environment

---

## Objective

- To set up and configure the VHDL development environment (VS Code, GHDL, and GTKWave).
- To understand the fundamental structure and components of a VHDL design.
- To write, simulate, and visualize a basic VHDL program.

---

## Theory

VHDL is an acronym for VHSIC Hardware Description Language (VHSIC stands for Very High Speed Integrated Circuits). It is an IEEE industry-standard hardware description language that can be used to model a digital system at many levels of abstraction, ranging from the algorithmic level to the gate level.

Unlike conventional programming languages, VHDL allows designers to model how signals flow through logic gates and flip-flops concurrently (at the same time).

---

## VHDL Structure

A VHDL design is typically composed of three essential parts:

### 1. Library and Packages
These contain predefined data types, constants, and functions. The most common library used is IEEE, which provides the standard `std_logic` types.

### 2. Entity
Defines the external interface of the circuit. It specifies input and output ports (pins) through which the circuit communicates with the outside world.

### 3. Architecture
Defines the internal logic or behavior of the entity. It describes how the outputs are generated based on the inputs.

---

## Libraries and Packages

A Library is a compiled directory where VHDL design units are stored.

### Common libraries:

- **std library**
  - Automatically included
  - Contains basic types like bit, integer, boolean, character

- **IEEE library**
  - Must be explicitly declared
  - Provides `std_logic` and `std_logic_vector`

```vhdl
library IEEE;
use IEEE.STD_LOGIC_1164.ALL; -- Provides std_logic types
use IEEE.NUMERIC_STD.ALL;    -- Provides arithmetic operations
```

---

## Entity

The entity describes the external view of a circuit.

### Syntax:
```vhdl
entity entity_name is
port (
    port_name : direction data_type;
    port_name : direction data_type
);
end entity entity_name;
```

### Port Directions:
- `in` → input
- `out` → output
- `inout` → bidirectional

### Example:
```vhdl
entity AND_GATE is
port (
    A : in std_logic;
    B : in std_logic;
    Y : out std_logic
);
end entity AND_GATE;
```

---

## Architecture

Defines internal behavior of the entity.

### Syntax:
```vhdl
architecture arch_name of entity_name is
begin
    -- logic here
end architecture arch_name;
```

### Example:
```vhdl
architecture Behavioral of AND_GATE is
begin
    Y <= A and B;
end architecture Behavioral;
```

---

## Types of Architectural Models

### 1. Behavioral Model
```vhdl
architecture Behavioral of AND_GATE is
begin
process(A, B)
begin
    Y <= A and B;
end process;
end architecture Behavioral;
```

### 2. Dataflow Model
```vhdl
architecture Dataflow of AND_GATE is
begin
    Y <= A and B;
end architecture Dataflow;
```

### 3. Structural Model
```vhdl
architecture Structural of AND_GATE is
component AND2
    port (
        X, Z : in std_logic;
        W : out std_logic
    );
end component;

begin
    U1: AND2 port map (X => A, Z => B, W => Y);
end architecture Structural;
```

---

## Basic Data Types and Signals

### std_logic
- Single-bit type
- Supports values like '0', '1', 'Z', 'U', etc.

### std_logic_vector
- Multi-bit bus type
- Example: `std_logic_vector(7 downto 0)`

### Signals
Used for internal connections.

```vhdl
architecture Behavioral of MY_CIRCUIT is
signal internal_wire : std_logic;
signal data_bus : std_logic_vector(7 downto 0);
begin
end architecture Behavioral;
```

---

## VHDL Design Cycle

1. **Analysis (Compilation)** – checks syntax
2. **Elaboration** – builds design hierarchy
3. **Simulation** – applies inputs and tests behavior
4. **Visualization** – GTKWave displays waveforms

---

## Discussion

The primary objective of this experiment was to design and simulate a digital system using VHDL within an open-source environment. The transition from a conceptual logic diagram to a hardware description highlighted the concurrent nature of VHDL.

Unlike sequential programming, signals propagate simultaneously, as shown in GTKWave timing diagrams.

---

## Conclusion

This lab successfully demonstrated the workflow of digital design using VHDL and the open-source toolchain consisting of GHDL and GTKWave.
