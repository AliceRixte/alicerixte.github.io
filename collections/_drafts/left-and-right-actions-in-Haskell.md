## How to handle multi parameter type classes  ?

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac tortor sed velit posuere placerat nec id nisi. Quisque purus sem, molestie at egestas nec, tempus id mi. Nam vestibulum metus a porta fermentum. Etiam nec velit nec velit pulvinar consequat. Duis pellentesque est orci. Maecenas est velit, efficitur id eros ut, volutpat auctor mauris. Duis quis pretium libero, id interdum est. Integer diam ipsum, commodo ut feugiat a, aliquet ac felis. Curabitur dignissim fermentum mi at tempor.

Pellentesque accumsan, erat in aliquet pellentesque, erat metus fermentum velit, ut varius ante massa pretium mi. Etiam non condimentum neque, sit amet mollis ipsum. Aenean sed dui ante. Morbi auctor turpis eleifend nibh hendrerit feugiat. Aenean eget mauris molestie, faucibus velit id, fermentum dui. Vivamus pellentesque nibh quis ultrices auctor. Mauris non arcu faucibus, efficitur tortor ac, scelerisque purus. Cras mollis luctus sagittis.

```haskell
class LAct x s where
  {-# MINIMAL lact | (<>$) #-}
  -- | Lifts an element of the set @s@ into a function on the set @x@
  lact :: s -> x -> x
  lact = (<>$)
  {-# INLINE lact #-}
  infixr 5 `lact`

  -- | Infix synonym or @'lact'@
  --
  -- The acting part is on the right of the operator (symbolized by @<>@) and
  -- the actee on the right (symbolized by @$@), hence the notation @<>$@
  (<>$) :: s -> x -> x
  (<>$) = lact
  {-# INLINE (<>$) #-}
  infixr 5 <>$
```