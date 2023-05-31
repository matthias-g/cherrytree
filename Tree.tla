-------------------------------- MODULE Tree --------------------------------

VARIABLES
    FruitState
    
vars == <<FruitState>>
    
FruitTree == INSTANCE FruitTree

Init ==
    /\ FruitTree!Init

Next ==
    \/ FruitTree!Next
    \* other actions ommitted
    
Spec ==
    /\ Init
    /\ [][Next]_vars
    /\ WF_vars(Next)

=============================================================================
\* Modification History
\* Last modified Wed May 31 11:29:09 CEST 2023 by grundmann
\* Created Wed May 31 11:29:06 CEST 2023 by grundmann
