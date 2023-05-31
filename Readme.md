# Test project for TLA+ Refinement

This specification describes a cherry tree. A cherry tree grows fruits by first growing buds, then blossoms, then fruits.

The abstract behavior of a tree is described by `Tree.tla`.
An aspect of a tree is that the tree grows fruits. Growing fruits is, abstractly, specified in `FruitTree.tla`.
A FruitTree simply grows fruits (without describing buds and blossoms).

A CherryTree is a Tree as specified here.

The refinement can be checked by running the model `Refinement`.
