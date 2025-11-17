# GitHub Issues for EECS568 Data Mining Project

## Issue #1: Implement Data Loaders (Question 1)

**Title:** Implement Data Loaders for Training and Testing Sets

**Description:**
Construct DataLoader objects for both training and testing datasets with the following specifications:
- Batch size: 64
- Ensure proper data handling for MNIST dataset
- Consider shuffle parameter for training data

**Acceptance Criteria:**
- [ ] Training DataLoader created with batch_size=64
- [ ] Testing DataLoader created with batch_size=64
- [ ] Data loaders properly iterate through batches
- [ ] Code cell executes without errors

**Labels:** enhancement, data-preparation
**Milestone:** Core Experiments
**Due Date:** December 1, 2025

---

## Issue #2: Baseline Model - 2-Layer Neural Network (Question 2)

**Title:** Create Baseline Sequential Neural Network (Input → 32 → 32 → 10)

**Description:**
Build the baseline model that will serve as the comparison point for all future experiments.

**Architecture:**
- Input layer: 784 (flattened 28x28 MNIST images)
- Hidden layer 1: 32 neurons with ReLU activation
- Hidden layer 2: 32 neurons with ReLU activation
- Output layer: 10 neurons with log_softmax activation

**Training Configuration:**
- Optimizer: SGD with learning_rate=0.01
- Loss function: Categorical cross-entropy (NLLLoss)
- Batch size: 64
- Epochs: 30
- Validation data: test set

**Acceptance Criteria:**
- [ ] Model architecture implemented correctly
- [ ] Training loop runs for 30 epochs
- [ ] Validation accuracy tracked and reported
- [ ] Model serves as baseline for future comparisons

**Labels:** enhancement, baseline-model, priority-high
**Milestone:** Core Experiments
**Due Date:** December 1, 2025

---

## Issue #3: Width Experiment - Wider Network (Question 3)

**Title:** Experiment with Wider Network Architecture (Input → 64 → 64 → 10)

**Description:**
Create a network with wider hidden layers to analyze the impact of increased neuron count per layer.

**Architecture:**
- Input → 64 → 64 → 10
- Same activation functions as baseline
- Same training configuration as baseline

**Analysis Required:**
Answer the following in the notebook:
1. How does increasing neurons per layer affect accuracy?
2. How does it affect training speed?
3. Does it make sense to increase neuron count? Why or why not?
4. By how much should we increase if beneficial?

**Acceptance Criteria:**
- [ ] Model implemented and trained
- [ ] Accuracy compared to baseline (Issue #2)
- [ ] Training time measured and compared
- [ ] Analysis questions answered in markdown cell

**Labels:** enhancement, experiment, hyperparameter-tuning
**Milestone:** Core Experiments
**Due Date:** December 1, 2025

---

## Issue #4: Optimizer Tuning - SGD with Momentum (Question 4)

**Title:** Add Momentum and Decay to SGD Optimizer

**Description:**
Experiment with enhanced SGD optimizer using momentum and weight decay on the baseline architecture.

**Architecture:**
- Input → 32 → 32 → 10 (same as baseline)

**Optimizer Configuration:**
- SGD with:
  - learning_rate: 0.01
  - decay: 0.000001 (weight_decay parameter)
  - momentum: 0.9

**Analysis Required:**
1. How does this model compare to previous models in accuracy?
2. How does it compare in computation speed?
3. Is using momentum a good idea? Why?

**Acceptance Criteria:**
- [ ] Model trained with enhanced SGD optimizer
- [ ] Performance compared to Issues #2 and #3
- [ ] Computation speed measured
- [ ] Analysis of momentum benefits documented

**Labels:** enhancement, experiment, optimizer
**Milestone:** Core Experiments
**Due Date:** December 1, 2025

---

## Issue #5: Batch Size Experiments (Question 5)

**Title:** Analyze Impact of Different Batch Sizes

**Description:**
Run experiments with different batch sizes to understand their effect on training dynamics.

**Architecture:**
- Input → 32 → 32 → 10 (baseline architecture)
- Same optimizer settings as baseline

**Experiments:**
1. Model with batch_size=128
2. Model with batch_size=32

**Analysis Required:**
1. How does batch size affect computation speed?
2. How does batch size affect accuracy?
3. Why do these effects occur?

**Acceptance Criteria:**
- [ ] Model trained with batch_size=128
- [ ] Model trained with batch_size=32
- [ ] Computation time compared for both
- [ ] Accuracy compared for both
- [ ] Explanation of batch size trade-offs provided

**Labels:** enhancement, experiment, performance
**Milestone:** Core Experiments
**Due Date:** December 1, 2025

---

## Issue #6: Depth Experiment - 3-Layer Network (Question 6)

**Title:** Add Third Hidden Layer to Network

**Description:**
Experiment with network depth by adding an additional hidden layer.

**Architecture:**
- Input → 32 → 32 → 32 → 10
- Same training configuration as baseline

**Analysis Required:**
1. How did adding another layer affect computation time?
2. How did it affect accuracy?
3. Why do you think these effects occurred?

**Acceptance Criteria:**
- [ ] 3-layer model implemented and trained
- [ ] Computation time compared to 2-layer models
- [ ] Accuracy compared to previous models
- [ ] Analysis of depth impact documented

**Labels:** enhancement, experiment, architecture
**Milestone:** Core Experiments
**Due Date:** December 1, 2025

---

## Issue #7: Dropout Regularization Experiment (Question 7)

**Title:** Implement Dropout Regularization

**Description:**
Introduce dropout layers to prevent overfitting on a wider network architecture.

**Architecture:**
- Input → Dropout(0.5) → 128 → Dropout(0.5) → 128 → Dropout(0.5) → 10
- Dropout rate: 0.5
- Same training configuration as baseline

**Analysis Required:**
1. How does dropout affect accuracy?
2. How does it affect computation time?
3. What is dropout doing to the network?
4. Does it make sense to use dropout with this neuron count?
5. How does dropout affect training speed?

**Acceptance Criteria:**
- [ ] Model with dropout layers implemented
- [ ] Training accounts for train/eval modes
- [ ] Performance compared to model without dropout
- [ ] Deep analysis of dropout effects documented

**Labels:** enhancement, experiment, regularization
**Milestone:** Core Experiments
**Due Date:** December 1, 2025

---

## Issue #8: Optimal Model Design (Question 8)

**Title:** Design and Implement Best Performing Model

**Description:**
Synthesize learnings from all previous experiments to create the optimal model for MNIST classification.

**Requirements:**
- Combine the best aspects from Questions 1-7
- Document architecture and all hyperparameters
- Provide justification for each design choice
- Create visualizations

**Deliverables:**
1. Final model architecture and hyperparameters
2. Validation accuracy achieved
3. Loss curve visualization across epochs
4. Explanation of design choices based on previous experiments

**Acceptance Criteria:**
- [ ] Final model implemented with justified architecture
- [ ] All hyperparameters documented
- [ ] Loss curve plotted (loss vs. epoch number)
- [ ] Comprehensive explanation of design decisions
- [ ] Final validation accuracy reported

**Labels:** enhancement, priority-high, final-model
**Milestone:** Core Experiments
**Due Date:** December 1, 2025

---

## Issue #9: Final Results Compilation and Documentation

**Title:** Compile Complete Results Summary

**Description:**
Create a comprehensive summary of all experiments and findings in the Jupyter notebook.

**Requirements:**
- Summary table comparing all models (Q2-Q8)
- Key metrics: validation accuracy, training time, architecture
- Insights and learnings from each experiment
- Final recommendations

**Acceptance Criteria:**
- [ ] All 8 questions completed in notebook
- [ ] Results table with all model comparisons
- [ ] Notebook runs end-to-end without errors
- [ ] All markdown cells contain complete analysis
- [ ] Ready for submission

**Labels:** documentation, priority-high
**Milestone:** Final Submission
**Due Date:** December 1, 2025
