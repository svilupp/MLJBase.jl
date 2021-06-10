## MLJBase  

Repository for developers that provides core functionality for the
[MLJ](https://github.com/alan-turing-institute/MLJ.jl) machine
learning framework.

| Branch   | Julia | Build  | Coverage |
| -------- | ----- | ------ | -------- |
| `master` | v1    | [![Continuous Integration (CPU)][gha-img-master]][gha-url] | [![Code Coverage][codecov-img-master]][codecov-url] |
| `dev`    | v1    | [![Continuous Integration (CPU)][gha-img-dev]][gha-url]    | [![Code Coverage][codecov-img-dev]][codecov-url] |

[gha-img-master]: https://github.com/alan-turing-institute/MLJBase.jl/workflows/CI/badge.svg?branch=master "Continuous Integration (CPU)"
[gha-img-dev]: https://github.com/alan-turing-institute/MLJBase.jl/workflows/CI/badge.svg?branch=dev "Continuous Integration (CPU)"
[gha-url]: https://github.com/alan-turing-institute/MLJBase.jl/actions/workflows/ci.yml

[codecov-img-master]: http://codecov.io/github/alan-turing-institute/MLJBase.jl/coverage.svg?branch=master "Code Coverage"
[codecov-img-dev]: http://codecov.io/github/alan-turing-institute/MLJBase.jl/coverage.svg?branch=dev "Code Coverage"
[codecov-url]: https://github.com/alan-turing-institute/MLJBase.jl/actions/workflows/ci.yml

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://alan-turing-institute.github.io/MLJBase.jl/stable)

[MLJ](https://github.com/alan-turing-institute/MLJ.jl) is a Julia
framework for combining and tuning machine learning models. This
repository provides core functionality for MLJ, including:

- completing the functionality for methods defined "minimally" in
  MLJ's light-weight model interface
  [MLJModelInterface](https://github.com/alan-turing-institute/MLJModelInterface.jl)

- definition of **machines** and their associated methods, such as
  `fit!` and `predict`/`transform`. Serialization of machines,
  however, now lives in
  [MLJSerialization](https://github.com/JuliaAI/MLJSerialization.jl).

- MLJ's **model composition** interface, including **learning
  networks** and **pipelines**

- basic utilities for **manipulating data**
  
- an extension to
  [Distributions.jl](https://github.com/JuliaStats/Distributions.jl)
  called `UnivariateFinite` for randomly sampling *labeled*
  categorical data

- a [small interface](https://alan-turing-institute.github.io/MLJ.jl/dev/evaluating_model_performance/#Custom-resampling-strategies-1) for **resampling strategies** and implementations, including `CV()`, `StratifiedCV` and `Holdout`

- methods for **performance evaluation**, based on those resampling strategies

- **one-dimensional hyperparameter range types**, constructors and
  associated methods, for use with
  [MLJTuning](https://github.com/alan-turing-institute/MLJTuning.jl)

- a [small
  interface](https://alan-turing-institute.github.io/MLJ.jl/dev/performance_measures/#Traits-and-custom-measures-1)
  for **performance measures** (losses and scores), enabling the
  integration of the
  [LossFunctions.jl](https://github.com/JuliaML/LossFunctions.jl)
  library, user-defined measures, as well as about forty natively
  defined measures.


Previously MLJBase provided the model interface for integrating third
party machine learning models into MLJ. That role has now shifted to
the light-weight
[MLJModelInterface](https://github.com/alan-turing-institute/MLJModelInterface.jl)
package.
