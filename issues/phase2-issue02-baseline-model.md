# Issue 02: Create Baseline Sequential Neural Network (Input → 32 → 32 → 10)

**Phase:** 2 - Baseline & Initial Experiments
**Priority:** Critical
**Dependencies:** Issue #1 (Data Loaders)
**Estimated Effort:** 3-4 hours

---

## Question 2: Baseline Model

Build the baseline model that will serve as the comparison point for all future experiments.

---

## Architecture

- **Input layer:** 784 (flattened 28x28 MNIST images)
- **Hidden layer 1:** 32 neurons with ReLU activation
- **Hidden layer 2:** 32 neurons with ReLU activation
- **Output layer:** 10 neurons with log_softmax activation

---

## Training Configuration

- **Optimizer:** SGD with learning_rate=0.01
- **Loss function:** Categorical cross-entropy (NLLLoss)
- **Batch size:** 64
- **Epochs:** 30
- **Validation data:** test set

---

## Acceptance Criteria

- [ ] Model architecture implemented correctly
- [ ] Input data properly flattened (28x28 → 784)
- [ ] Training loop runs for 30 epochs
- [ ] Validation accuracy tracked and reported after each epoch
- [ ] Final validation accuracy documented
- [ ] Training time recorded
- [ ] Model serves as baseline for future comparisons

---

## Implementation Notes

- Use `nn.Sequential` or define custom `nn.Module`
- Remember to flatten inputs: `x.view(-1, 28*28)` or `x.view(x.size(0), -1)`
- Use `F.log_softmax(x, dim=1)` for output layer
- Track both training and validation metrics
- Print validation accuracy after each epoch

---

## Expected Outcomes

Document the following:
- Final validation accuracy: ____%
- Total training time: ___ seconds
- Average time per epoch: ___ seconds

---

## Labels
`enhancement` `baseline-model` `priority-critical` `phase-2`
