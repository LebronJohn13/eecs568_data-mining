# Issue 04: Add Momentum and Decay to SGD Optimizer

**Phase:** 2 - Baseline & Initial Experiments
**Priority:** High
**Dependencies:** Issue #2 (Baseline Model), Issue #3 (Wider Network)
**Estimated Effort:** 2-3 hours

---

## Question 4: Optimizer Tuning

Experiment with enhanced SGD optimizer using momentum and weight decay on the baseline architecture.

---

## Architecture

- **Input → 32 → 32 → 10** (same as baseline)
- Same activations as baseline

---

## Optimizer Configuration

**SGD with:**
- `learning_rate`: 0.01
- `weight_decay`: 0.000001 (this is the decay parameter)
- `momentum`: 0.9

---

## Analysis Required

Answer the following questions:

1. **How does this model compare to previous models in accuracy?**
2. **How does it compare in computation speed?**
3. **Is using momentum a good idea? Why?**

---

## Acceptance Criteria

- [ ] Model trained with enhanced SGD optimizer
- [ ] Optimizer parameters correctly set (lr=0.01, momentum=0.9, weight_decay=1e-6)
- [ ] Performance compared to Issues #2 and #3
- [ ] Computation speed measured
- [ ] Analysis of momentum benefits documented
- [ ] Comparison table created

---

## Comparison Metrics

| Model | Architecture | Optimizer | Val Accuracy | Training Time |
|-------|--------------|-----------|--------------|---------------|
| Baseline | 32-32 | SGD | ___% | ___s |
| Wider | 64-64 | SGD | ___% | ___s |
| Momentum | 32-32 | SGD+momentum | ___% | ___s |

---

## Implementation Notes

```python
optimizer = optim.SGD(model.parameters(),
                      lr=0.01,
                      momentum=0.9,
                      weight_decay=0.000001)
```

---

## Labels
`enhancement` `experiment` `optimizer` `phase-2`
