###################################################
################### ECS INTERFACE #################
###################################################

"""
Create a new entity in the ledger `l` with components `comps...`

## Example

```julia
e1 = new_entity!(l, Position(1, 2), Velocity(0, 0))
```
"""
ECSInterface.new_entity!(l::AbstractLedger, comps...) = Entity(l, comps...)

```
Create a vector of `n` entities all with the components given with `comps`.
```
function ECSInterface.new_entities!(l::AbstractLedger, n, comps...)
    res = Vector{Entity}(undef, n)
    for i in Base.OneTo(n)
        res[i] = Entity(l, comps...)
    end
end