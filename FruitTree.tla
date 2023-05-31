----------------------------- MODULE FruitTree -----------------------------

VARIABLES
    FruitState
    
vars == <<FruitState>>

GrowFruits ==
    /\ FruitState = "init"
    /\ FruitState' = "fruits"
    
Init ==
    /\ FruitState = "init"
    
Next ==
    \/ GrowFruits
    
Spec ==
    /\ Init
    /\ [][Next]_vars
    /\ WF_vars(Next)

=============================================================================
\* Modification History
\* Last modified Wed May 31 11:28:55 CEST 2023 by grundmann
\* Created Wed May 31 11:28:52 CEST 2023 by grundmann
