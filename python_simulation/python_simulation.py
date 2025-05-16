# Python Simulation Engine Starter
# Unit 4: Systems and Control

# This scaffold models a system where agents follow rules
# You can adapt it to simulate traffic, behaviors, counters, etc.

# ----------------------------
# INITIAL STATE SETUP
# ----------------------------
state = {
    'time': 0,
    'counter': 0,
    'max_time': 10
}

# ----------------------------
# RULES / LOGIC STEP FUNCTION
# ----------------------------
def update_state(state):
    """
    Define how the state changes in each time step.
    """
    state['counter'] += 1
    state['time'] += 1
    return state

# ----------------------------
# SIMULATION LOOP
# ----------------------------
while state['time'] < state['max_time']:
    print(f"Time {state['time']}: Counter = {state['counter']}")
    state = update_state(state)

print("\nSimulation complete.")

# ----------------------------
# TODO: Customize This Engine
# ----------------------------
# - Add new variables to `state` (e.g., position, energy, mood)
# - Make rules conditional (e.g., if X then Y)
# - Allow user input or randomness
# - Create graphs or logs of simulation output
