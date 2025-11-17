# Issue 06: Add Third Hidden Layer to Network

**Phase:** 3 - Advanced Experiments
**Priority:** Medium
**Dependencies:** Issue #2 (Baseline Model)
**Estimated Effort:** 2-3 hours

---

## Question 6: Depth Experiment

Experiment with network depth by adding an additional hidden layer.

---

## Architecture

- **Input → 32 → 32 → 32 → 10**
- Same activations (ReLU + log_softmax)
- Same training configuration as baseline

---

## Analysis Required

Answer the following questions:

1. **How did adding another layer affect computation time?**
2. **How did it affect accuracy?**
3. **Why do you think these effects occurred?**

---

## Acceptance Criteria

- [ ] 3-layer model implemented and trained
- [ ] Computation time compared to 2-layer models
- [ ] Accuracy compared to previous models
- [ ] Analysis of depth impact documented
- [ ] Discussion of depth vs. width trade-offs

---

## Comparison Metrics

| Model | Architecture | Layers | Parameters | Val Accuracy | Training Time |
|-------|--------------|--------|------------|--------------|---------------|
| Baseline | 32-32 | 2 hidden | ___ | ___% | ___s |
| Wider | 64-64 | 2 hidden | ___ | ___% | ___s |
| Deeper | 32-32-32 | 3 hidden | ___ | ___% | ___s |

---

## Implementation Notes

- Add third hidden layer with 32 neurons
- Apply ReLU activation after each hidden layer
- Calculate parameters: more layers = more parameters even with same width
- Consider potential issues: vanishing gradients, overfitting

---

## Discussion Points

- Does deeper network learn better representations?
- Is there a point of diminishing returns?
- Depth vs. width: which is more effective for MNIST?

---

## Labels
`enhancement` `experiment` `architecture` `phase-3`
