# One-Dimensional Optimization

This repository contains a MATLAB implementation and analysis of classical **one-dimensional optimization methods** for convex (unimodal) function minimization.

The project represents the first assignment of an *Optimization Techniques* course, focusing on both the algorithmic implementation and the comparative evaluation of these methods.

---

## 📌 Overview

This project explores the problem of minimizing a function of a single variable within a bounded interval, using iterative algorithms that progressively reduce the search space.

The main objective is to approximate the minimum of a function f(x), for x in [a, b], by iteratively reducing the search interval until a desired level of accuracy is achieved.

---

## 🧠 Problem Description

We study the problem of **minimizing a scalar function of one variable** within a bounded interval:

* Given an initial interval ([a, b])
* Find an approximation of the real minimizer (x*)
* Such that the final interval length satisfies:
  b_k - a_k ≤ l

This class of problems forms the foundation for more advanced optimization techniques in higher dimensions.

---

## ⚙️ Methods Implemented

The project includes four classical optimization algorithms:

### 🔹 Derivative-Free Methods

These methods rely only on function evaluations:

* **Bisection Method (Search Version)**  
  Iteratively reduces the interval by evaluating the function at two points near the midpoint.

* **Golden Section Method**  
  Uses a fixed ratio (≈0.618) to efficiently shrink the interval with minimal function evaluations.

* **Fibonacci Method**  
  Similar to the golden section method, but uses Fibonacci ratios to achieve optimal interval reduction in a predefined number of steps.

---

### 🔹 Derivative-Based Method

* **Bisection Method Using Derivatives**  
  Uses the sign of the derivative at the midpoint to determine the direction of the minimum.

---

## 📊 Experimental Analysis

Beyond implementation, the project focuses on **analyzing the behavior and efficiency** of these methods.

For each algorithm, we study:

### 🔸 Effect of Parameters

* Influence of accuracy parameter (l)
* Influence of offset parameter (ε or e in .m files) (for bisection)

### 🔸 Computational Cost

* Number of function (or derivative) evaluations required for convergence

### 🔸 Convergence Behavior

* Evolution of the searching interval ([a_k, b_k]) across iterations
* Visualization of how quickly each method narrows down the search space

---

## 🧪 Test Functions

The methods are applied to three different functions over a specified interval, allowing comparison across different function behaviors.

---

## 📁 Project Structure

```
one-dimensional-optimization/
│
├── src/
│   ├── methods/                                      # Optimization algorithms
│   │   ├── BisectionMethod.m
│   │   ├── BisectionMethodUsingDerivatives.m
│   │   ├── GoldenSectionMethod.m
│   │   └── FibonacciMethod.m
│   │
│   ├── analysis/                                     # Parameter studies & plotting
│   │   ├── eIsVariableBisectionMethodCalculations.m
│   │   ├── lIsVariableBisectionMethodCalculations.m
│   │   ├── lIsVariableGoldenSectionMethodCalculations.m
│   │   ├── lIsVariableFibonacciMethodCalculations.m
│   │   ├── lIsVariableBisectionMethodUsingDerivativesCalculations.m
│   │   ├── lIsVariableBisectionMethodIntervalsGraph.m
│   │   ├── lIsVariableGoldenSectionMethodIntervalsGraph.m
│   │   ├── lIsVariableFibonacciMethodIntervalsGraph.m
│   │   └── lIsVariableBisectionMethodUsingDerivativesIntervalsGraph.m
│   │
│   ├── utils/                                        # Helper functions
│   │   ├── DerivativeAtSpecificPoint.m
│   │   └── PlotOfAFunction.m
│   │
│   └── FirstLaboratoryExerciseCode.m                 # Main script
│
├── docs/                                             # Statement & Report
│   ├── lab01.pdf
│   └── report_lab01.pdf
│
├── README.md
└── .gitignore
```

---

## ▶️ How to Run

### 🔧 Requirements

* MATLAB (any recent version)

### 🚀 Execution

1. Open MATLAB
2. Navigate to the `src/` directory
3. Run the main script:

```matlab
FirstLaboratoryExerciseCode.m
```

This will:

* Execute all implemented methods
* Generate plots
* Display results used in the analysis

---

## 🎯 Key Takeaways

* One-dimensional optimization methods provide the foundation for more advanced techniques
* Different algorithms exhibit different trade-offs between:

  * accuracy
  * speed
  * computational cost
* Parameter selection plays a crucial role in convergence behavior

---

## 📝 Notes

* All results (plots as well as interpretations, comparative analysis and conclusions on convergernce and efficiency) are presented in the report
* Figures are generated dynamically by running the code
