# Issue 03: Experiment with Wider Network Architecture (Input → 64 → 64 → 10)

**Phase:** 2 - Baseline & Initial Experiments
**Priority:** High
**Dependencies:** Issue #2 (Baseline Model)
**Estimated Effort:** 2-3 hours

---

## Question 3: Width Experiment

Create a network with wider hidden layers to analyze the impact of increased neuron count per layer.

---

## Architecture

- **Input → 64 → 64 → 10**
- Same activation functions as baseline (ReLU + log_softmax)
- Same training configuration as baseline

---

## Analysis Required

Answer the following questions in a markdown cell:

1. **How does increasing neurons per layer affect accuracy?**
2. **How does it affect training speed?**
3. **Does it make sense to increase neuron count? Why or why not?**
4. **By how much should we increase if beneficial?**

---

## Acceptance Criteria

- [ ] Model implemented and trained with 64-neuron hidden layers
- [ ] Validation accuracy compared to baseline (Issue #2)
- [ ] Training time measured and compared to baseline
- [ ] All analysis questions answered in markdown cell
- [ ] Documented observations about width vs. performance trade-offs

---

## Comparison Metrics

Create a comparison table:

| Metric | Baseline (32-32) | Wider (64-64) | Difference |
|--------|------------------|---------------|------------|
| Validation Accuracy | ___% | ___% | ___% |
| Training Time | ___s | ___s | ___s |
| Parameters | ___ | ___ | ___ |

---

## Implementation Notes

- Copy baseline model structure, change hidden layer sizes to 64
- Use identical training parameters (lr=0.01, epochs=30, batch_size=64)
- Calculate total parameters: use `sum(p.numel() for p in model.parameters())`

---

## Labels
`enhancement` `experiment` `hyperparameter-tuning` `phase-2`
