(function () { 
 'use strict'; 
 var Tooltip = [
  {
    "key": "Serious Outcome Rate",
    "value": "An annual incidence rate for all serious outcomes (hospitalization, death, required intervention to prevent permanent damage, life threatening and congenital anomaly) for the period between 2010 and 2014 based on patient population data provided by Evaluate Limited.",
    "module": "common"
  },
  {
    "key": "DME Serious Rate",
    "value": "An annual incidence rate for all DME Serious Events.",
    "module": "common"
  },
  {
    "key": "Indication",
    "value": "A symptom that suggests certain medical treatment is necessary.",
    "module": "common"
  },
  {
    "key": "Rank in Drug Class",
    "value": "RxScore ranking out of all drugs within the associated drug class. We assign RxScore rankings to individual drugs within their approved indications, for example a type 2 diabetes mellitus (T2DM) medication may rank 1 out of 12, meaning it has the safest (lowest) RxScore out of the 12 approved T2DM medications.",
    "module": "common"
  },
  {
    "key": "2014 Revenue Total - Companies",
    "value": "The 2014 USA Sales for this \"company\" stuff.",
    "module": "portfolio.detail.rxsignal.summary"
  },
  {
    "key": "Outcome",
    "value": "Reported patient outcome.",
    "module": "drugs.detail.cases"
  },
  {
    "key": "IME Serious Rate",
    "value": "An annual incidence rate for all IME Serious Events for the period between 2010 and 2014 based on patient population data provided by Evaluate Limited.  Adverse events categorized as IME are important medical events regardless of the presence of other regulatory seriousness criteria as determined by EudraVigilance.asdas",
    "module": "common"
  },
  {
    "key": "Label Status",
    "value": "Whether the adverse event listed is currently on or off the drug’s label.",
    "module": "drugs.detail.cases"
  },
  {
    "key": "2014 Revenue",
    "value": "The 2014 USA Sales for this product. Source: Evaluate Limited.",
    "module": "portfolio.detail.rxsignal.summary"
  }
];
angular.module('common.tooltip', []).constant('Tooltip', Tooltip); }());