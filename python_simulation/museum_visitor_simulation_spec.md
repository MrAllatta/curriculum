# Sample Simulation Spec: Museum Visitor Flow

**Title:** Museum Visitor Flow Simulation
**Author:** CS9 Student / Instructor Model
**Use Case:** Unit 4 – Systems and Control

---

## Objective

Design a simulation that models how visitors move through a museum exhibit space. The simulation should demonstrate control flow, state tracking, and behavior rules.

---

## Core Components

### 1. **State Variables**

* `time`: tracks the total time elapsed in the simulation
* `visitors`: a list of visitor objects, each with a current location and patience level
* `gallery`: a dictionary of rooms (e.g., {"lobby": 5, "gallery1": 10}) with capacities or congestion thresholds
* `log`: a running history of events or states

### 2. **Visitor Behavior Rules**

Each visitor follows simple logic:

* Start in the `lobby`
* If current room is crowded, decide to wait or move
* Move toward a target room with lower crowding
* Decrease patience if waiting too long
* Exit simulation after certain time or frustration

### 3. **Simulation Loop (per tick)**

* Increment time
* Update each visitor's location and state
* Check crowd levels and visitor patience
* Log state changes (e.g., moved, exited, waited)

---

## Sample Visitor Object

```python
visitor = {
  "id": 1,
  "location": "lobby",
  "patience": 5,
  "path": ["lobby", "gallery1", "gallery2"]
}
```

---

## Stretch Ideas

* Add randomness to behavior (probability of leaving or switching rooms)
* Visualize room population over time (e.g., using `matplotlib`)
* Introduce roles (e.g., impatient vs. curious visitors)
* Add exhibits with limited capacity or popularity ratings

---

## Reflection Prompts

* What system behaviors emerged over time?
* Did any bottlenecks or patterns surprise you?
* How would you adapt this simulation for real planning?

---

## Output Expectations

* Console log of simulation steps (time, visitors in each room)
* Optionally, a visual graph of visitor count per room over time
* Written reflection or summary from the student
