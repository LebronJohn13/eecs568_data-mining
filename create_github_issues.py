#!/usr/bin/env python3
"""
Script to create GitHub Issues for EECS568 Data Mining Project
Usage: python3 create_github_issues.py <GITHUB_TOKEN>
"""

import sys
import requests
import json

REPO_OWNER = "LebronJohn13"
REPO_NAME = "eecs568_data-mining"

issues = [
    {
        "title": "Implement Data Loaders for Training and Testing Sets",
        "body": """## Question 1

Construct DataLoader objects for both training and testing datasets with the following specifications:
- Batch size: 64
- Ensure proper data handling for MNIST dataset
- Consider shuffle parameter for training data

### Acceptance Criteria
- [ ] Training DataLoader created with batch_size=64
- [ ] Testing DataLoader created with batch_size=64
- [ ] Data loaders properly iterate through batches
- [ ] Code cell executes without errors""",
        "labels": ["enhancement", "data-preparation"]
    },
    {
        "title": "Create Baseline Sequential Neural Network (Input → 32 → 32 → 10)",
        "body": """## Question 2: Baseline Model

Build the baseline model that will serve as the comparison point for all future experiments.

### Architecture
- Input layer: 784 (flattened 28x28 MNIST images)
- Hidden layer 1: 32 neurons with ReLU activation
- Hidden layer 2: 32 neurons with ReLU activation
- Output layer: 10 neurons with log_softmax activation

### Training Configuration
- Optimizer: SGD with learning_rate=0.01
- Loss function: Categorical cross-entropy (NLLLoss)
- Batch size: 64
- Epochs: 30
- Validation data: test set

### Acceptance Criteria
- [ ] Model architecture implemented correctly
- [ ] Training loop runs for 30 epochs
- [ ] Validation accuracy tracked and reported
- [ ] Model serves as baseline for future comparisons""",
        "labels": ["enhancement", "baseline-model", "priority-high"]
    },
    {
        "title": "Experiment with Wider Network Architecture (Input → 64 → 64 → 10)",
        "body": """## Question 3: Width Experiment

Create a network with wider hidden layers to analyze the impact of increased neuron count per layer.

### Architecture
- Input → 64 → 64 → 10
- Same activation functions as baseline
- Same training configuration as baseline

### Analysis Required
1. How does increasing neurons per layer affect accuracy?
2. How does it affect training speed?
3. Does it make sense to increase neuron count? Why or why not?
4. By how much should we increase if beneficial?

### Acceptance Criteria
- [ ] Model implemented and trained
- [ ] Accuracy compared to baseline (Issue #2)
- [ ] Training time measured and compared
- [ ] Analysis questions answered in markdown cell""",
        "labels": ["enhancement", "experiment", "hyperparameter-tuning"]
    },
    {
        "title": "Add Momentum and Decay to SGD Optimizer",
        "body": """## Question 4: Optimizer Tuning

Experiment with enhanced SGD optimizer using momentum and weight decay on the baseline architecture.

### Architecture
- Input → 32 → 32 → 10 (same as baseline)

### Optimizer Configuration
- SGD with:
  - learning_rate: 0.01
  - decay: 0.000001 (weight_decay parameter)
  - momentum: 0.9

### Analysis Required
1. How does this model compare to previous models in accuracy?
2. How does it compare in computation speed?
3. Is using momentum a good idea? Why?

### Acceptance Criteria
- [ ] Model trained with enhanced SGD optimizer
- [ ] Performance compared to Issues #2 and #3
- [ ] Computation speed measured
- [ ] Analysis of momentum benefits documented""",
        "labels": ["enhancement", "experiment", "optimizer"]
    },
    {
        "title": "Analyze Impact of Different Batch Sizes",
        "body": """## Question 5: Batch Size Experiments

Run experiments with different batch sizes to understand their effect on training dynamics.

### Architecture
- Input → 32 → 32 → 10 (baseline architecture)
- Same optimizer settings as baseline

### Experiments
1. Model with batch_size=128
2. Model with batch_size=32

### Analysis Required
1. How does batch size affect computation speed?
2. How does batch size affect accuracy?
3. Why do these effects occur?

### Acceptance Criteria
- [ ] Model trained with batch_size=128
- [ ] Model trained with batch_size=32
- [ ] Computation time compared for both
- [ ] Accuracy compared for both
- [ ] Explanation of batch size trade-offs provided""",
        "labels": ["enhancement", "experiment", "performance"]
    },
    {
        "title": "Add Third Hidden Layer to Network",
        "body": """## Question 6: Depth Experiment

Experiment with network depth by adding an additional hidden layer.

### Architecture
- Input → 32 → 32 → 32 → 10
- Same training configuration as baseline

### Analysis Required
1. How did adding another layer affect computation time?
2. How did it affect accuracy?
3. Why do you think these effects occurred?

### Acceptance Criteria
- [ ] 3-layer model implemented and trained
- [ ] Computation time compared to 2-layer models
- [ ] Accuracy compared to previous models
- [ ] Analysis of depth impact documented""",
        "labels": ["enhancement", "experiment", "architecture"]
    },
    {
        "title": "Implement Dropout Regularization",
        "body": """## Question 7: Dropout Regularization

Introduce dropout layers to prevent overfitting on a wider network architecture.

### Architecture
- Input → Dropout(0.5) → 128 → Dropout(0.5) → 128 → Dropout(0.5) → 10
- Dropout rate: 0.5
- Same training configuration as baseline

### Analysis Required
1. How does dropout affect accuracy?
2. How does it affect computation time?
3. What is dropout doing to the network?
4. Does it make sense to use dropout with this neuron count?
5. How does dropout affect training speed?

### Acceptance Criteria
- [ ] Model with dropout layers implemented
- [ ] Training accounts for train/eval modes
- [ ] Performance compared to model without dropout
- [ ] Deep analysis of dropout effects documented""",
        "labels": ["enhancement", "experiment", "regularization"]
    },
    {
        "title": "Design and Implement Best Performing Model",
        "body": """## Question 8: Optimal Model Design

Synthesize learnings from all previous experiments to create the optimal model for MNIST classification.

### Requirements
- Combine the best aspects from Questions 1-7
- Document architecture and all hyperparameters
- Provide justification for each design choice
- Create visualizations

### Deliverables
1. Final model architecture and hyperparameters
2. Validation accuracy achieved
3. Loss curve visualization across epochs
4. Explanation of design choices based on previous experiments

### Acceptance Criteria
- [ ] Final model implemented with justified architecture
- [ ] All hyperparameters documented
- [ ] Loss curve plotted (loss vs. epoch number)
- [ ] Comprehensive explanation of design decisions
- [ ] Final validation accuracy reported""",
        "labels": ["enhancement", "priority-high", "final-model"]
    },
    {
        "title": "Final Results Compilation and Documentation",
        "body": """## Final Deliverable

Create a comprehensive summary of all experiments and findings in the Jupyter notebook.

### Requirements
- Summary table comparing all models (Q2-Q8)
- Key metrics: validation accuracy, training time, architecture
- Insights and learnings from each experiment
- Final recommendations

### Acceptance Criteria
- [ ] All 8 questions completed in notebook
- [ ] Results table with all model comparisons
- [ ] Notebook runs end-to-end without errors
- [ ] All markdown cells contain complete analysis
- [ ] Ready for submission

**Due Date: December 1, 2025**""",
        "labels": ["documentation", "priority-high"]
    }
]

def create_issues(token):
    """Create GitHub issues using the provided token."""
    headers = {
        "Accept": "application/vnd.github+json",
        "Authorization": f"Bearer {token}",
        "X-GitHub-Api-Version": "2022-11-28"
    }

    api_url = f"https://api.github.com/repos/{REPO_OWNER}/{REPO_NAME}/issues"

    created_issues = []
    for i, issue in enumerate(issues, 1):
        print(f"Creating issue {i}/{len(issues)}: {issue['title']}")

        response = requests.post(api_url, headers=headers, data=json.dumps(issue))

        if response.status_code == 201:
            issue_data = response.json()
            created_issues.append(issue_data)
            print(f"  ✓ Created: {issue_data['html_url']}")
        else:
            print(f"  ✗ Failed: {response.status_code} - {response.text}")
            return False

    print(f"\n✓ Successfully created {len(created_issues)} issues!")
    return True

def main():
    if len(sys.argv) != 2:
        print("Usage: python3 create_github_issues.py <GITHUB_TOKEN>")
        print("\nTo create a GitHub token:")
        print("1. Go to https://github.com/settings/tokens")
        print("2. Click 'Generate new token (classic)'")
        print("3. Give it a name and select 'repo' scope")
        print("4. Click 'Generate token' and copy it")
        sys.exit(1)

    token = sys.argv[1]
    create_issues(token)

if __name__ == "__main__":
    main()
