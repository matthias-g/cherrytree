----------------------------- MODULE CherryTree -----------------------------

VARIABLES
    FruitState

vars == <<FruitState>>

Init ==
    /\ FruitState = "init"

AbstractedFruitState ==
    IF FruitState \in {"buds", "blossoms"}
    THEN "init"
    ELSE FruitState

AbstractTree == INSTANCE Tree WITH
    FruitState <- AbstractedFruitState
    
GrowBuds ==
    /\ FruitState = "init"
    /\ FruitState' = "buds"
                                       
OpenBlossoms ==
    /\ FruitState = "buds"
    /\ FruitState' = "blossoms"
    
GrowFruits ==
    /\ FruitState = "blossoms"
    /\ FruitState' = "fruits"

Next ==
    \/ GrowBuds
    \/ OpenBlossoms
    \/ GrowFruits

    
Spec ==
    /\ Init
    /\ [][Next]_vars
    /\ WF_<<FruitState>>(Next)

=============================================================================
\* Modification History
\* Last modified Wed May 31 11:28:37 CEST 2023 by grundmann
\* Created Wed May 31 11:28:23 CEST 2023 by grundmann
