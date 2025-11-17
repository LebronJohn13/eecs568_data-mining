#!/bin/bash

# GitHub repository details
REPO="LebronJohn13/eecs568_data-mining"
API_URL="https://api.github.com/repos/$REPO/issues"

# Issue 1: Data Loaders
curl -X POST "$API_URL" \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  -d '{
    "title": "Implement Data Loaders for Training and Testing Sets",
    "body": "## Question 1\n\nConstruct DataLoader objects for both training and testing datasets with the following specifications:\n- Batch size: 64\n- Ensure proper data handling for MNIST dataset\n- Consider shuffle parameter for training data\n\n### Acceptance Criteria\n- [ ] Training DataLoader created with batch_size=64\n- [ ] Testing DataLoader created with batch_size=64\n- [ ] Data loaders properly iterate through batches\n- [ ] Code cell executes without errors",
    "labels": ["enhancement", "data-preparation"]
  }'

# Issue 2: Baseline Model
curl -X POST "$API_URL" \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  -d '{
    "title": "Create Baseline Sequential Neural Network (Input → 32 → 32 → 10)",
    "body": "## Question 2: Baseline Model\n\nBuild the baseline model that will serve as the comparison point for all future experiments.\n\n### Architecture\n- Input layer: 784 (flattened 28x28 MNIST images)\n- Hidden layer 1: 32 neurons with ReLU activation\n- Hidden layer 2: 32 neurons with ReLU activation\n- Output layer: 10 neurons with log_softmax activation\n\n### Training Configuration\n- Optimizer: SGD with learning_rate=0.01\n- Loss function: Categorical cross-entropy (NLLLoss)\n- Batch size: 64\n- Epochs: 30\n- Validation data: test set\n\n### Acceptance Criteria\n- [ ] Model architecture implemented correctly\n- [ ] Training loop runs for 30 epochs\n- [ ] Validation accuracy tracked and reported\n- [ ] Model serves as baseline for future comparisons",
    "labels": ["enhancement", "baseline-model", "priority-high"]
  }'

# Issue 3: Wider Network
curl -X POST "$API_URL" \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  -d '{
    "title": "Experiment with Wider Network Architecture (Input → 64 → 64 → 10)",
    "body": "## Question 3: Width Experiment\n\nCreate a network with wider hidden layers to analyze the impact of increased neuron count per layer.\n\n### Architecture\n- Input → 64 → 64 → 10\n- Same activation functions as baseline\n- Same training configuration as baseline\n\n### Analysis Required\n1. How does increasing neurons per layer affect accuracy?\n2. How does it affect training speed?\n3. Does it make sense to increase neuron count? Why or why not?\n4. By how much should we increase if beneficial?\n\n### Acceptance Criteria\n- [ ] Model implemented and trained\n- [ ] Accuracy compared to baseline (Issue #2)\n- [ ] Training time measured and compared\n- [ ] Analysis questions answered in markdown cell",
    "labels": ["enhancement", "experiment", "hyperparameter-tuning"]
  }'

# Issue 4: Momentum
curl -X POST "$API_URL" \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  -d '{
    "title": "Add Momentum and Decay to SGD Optimizer",
    "body": "## Question 4: Optimizer Tuning\n\nExperiment with enhanced SGD optimizer using momentum and weight decay on the baseline architecture.\n\n### Architecture\n- Input → 32 → 32 → 10 (same as baseline)\n\n### Optimizer Configuration\n- SGD with:\n  - learning_rate: 0.01\n  - decay: 0.000001 (weight_decay parameter)\n  - momentum: 0.9\n\n### Analysis Required\n1. How does this model compare to previous models in accuracy?\n2. How does it compare in computation speed?\n3. Is using momentum a good idea? Why?\n\n### Acceptance Criteria\n- [ ] Model trained with enhanced SGD optimizer\n- [ ] Performance compared to Issues #2 and #3\n- [ ] Computation speed measured\n- [ ] Analysis of momentum benefits documented",
    "labels": ["enhancement", "experiment", "optimizer"]
  }'

# Issue 5: Batch Size
curl -X POST "$API_URL" \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  -d '{
    "title": "Analyze Impact of Different Batch Sizes",
    "body": "## Question 5: Batch Size Experiments\n\nRun experiments with different batch sizes to understand their effect on training dynamics.\n\n### Architecture\n- Input → 32 → 32 → 10 (baseline architecture)\n- Same optimizer settings as baseline\n\n### Experiments\n1. Model with batch_size=128\n2. Model with batch_size=32\n\n### Analysis Required\n1. How does batch size affect computation speed?\n2. How does batch size affect accuracy?\n3. Why do these effects occur?\n\n### Acceptance Criteria\n- [ ] Model trained with batch_size=128\n- [ ] Model trained with batch_size=32\n- [ ] Computation time compared for both\n- [ ] Accuracy compared for both\n- [ ] Explanation of batch size trade-offs provided",
    "labels": ["enhancement", "experiment", "performance"]
  }'

# Issue 6: Depth
curl -X POST "$API_URL" \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  -d '{
    "title": "Add Third Hidden Layer to Network",
    "body": "## Question 6: Depth Experiment\n\nExperiment with network depth by adding an additional hidden layer.\n\n### Architecture\n- Input → 32 → 32 → 32 → 10\n- Same training configuration as baseline\n\n### Analysis Required\n1. How did adding another layer affect computation time?\n2. How did it affect accuracy?\n3. Why do you think these effects occurred?\n\n### Acceptance Criteria\n- [ ] 3-layer model implemented and trained\n- [ ] Computation time compared to 2-layer models\n- [ ] Accuracy compared to previous models\n- [ ] Analysis of depth impact documented",
    "labels": ["enhancement", "experiment", "architecture"]
  }'

# Issue 7: Dropout
curl -X POST "$API_URL" \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  -d '{
    "title": "Implement Dropout Regularization",
    "body": "## Question 7: Dropout Regularization\n\nIntroduce dropout layers to prevent overfitting on a wider network architecture.\n\n### Architecture\n- Input → Dropout(0.5) → 128 → Dropout(0.5) → 128 → Dropout(0.5) → 10\n- Dropout rate: 0.5\n- Same training configuration as baseline\n\n### Analysis Required\n1. How does dropout affect accuracy?\n2. How does it affect computation time?\n3. What is dropout doing to the network?\n4. Does it make sense to use dropout with this neuron count?\n5. How does dropout affect training speed?\n\n### Acceptance Criteria\n- [ ] Model with dropout layers implemented\n- [ ] Training accounts for train/eval modes\n- [ ] Performance compared to model without dropout\n- [ ] Deep analysis of dropout effects documented",
    "labels": ["enhancement", "experiment", "regularization"]
  }'

# Issue 8: Optimal Model
curl -X POST "$API_URL" \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  -d '{
    "title": "Design and Implement Best Performing Model",
    "body": "## Question 8: Optimal Model Design\n\nSynthesize learnings from all previous experiments to create the optimal model for MNIST classification.\n\n### Requirements\n- Combine the best aspects from Questions 1-7\n- Document architecture and all hyperparameters\n- Provide justification for each design choice\n- Create visualizations\n\n### Deliverables\n1. Final model architecture and hyperparameters\n2. Validation accuracy achieved\n3. Loss curve visualization across epochs\n4. Explanation of design choices based on previous experiments\n\n### Acceptance Criteria\n- [ ] Final model implemented with justified architecture\n- [ ] All hyperparameters documented\n- [ ] Loss curve plotted (loss vs. epoch number)\n- [ ] Comprehensive explanation of design decisions\n- [ ] Final validation accuracy reported",
    "labels": ["enhancement", "priority-high", "final-model"]
  }'

# Issue 9: Final Compilation
curl -X POST "$API_URL" \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  -d '{
    "title": "Final Results Compilation and Documentation",
    "body": "## Final Deliverable\n\nCreate a comprehensive summary of all experiments and findings in the Jupyter notebook.\n\n### Requirements\n- Summary table comparing all models (Q2-Q8)\n- Key metrics: validation accuracy, training time, architecture\n- Insights and learnings from each experiment\n- Final recommendations\n\n### Acceptance Criteria\n- [ ] All 8 questions completed in notebook\n- [ ] Results table with all model comparisons\n- [ ] Notebook runs end-to-end without errors\n- [ ] All markdown cells contain complete analysis\n- [ ] Ready for submission\n\n**Due Date: December 1, 2025**",
    "labels": ["documentation", "priority-high"]
  }'

echo "All issues created successfully!"
