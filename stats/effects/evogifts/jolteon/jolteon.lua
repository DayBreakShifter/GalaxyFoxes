function init()
   effect.addStatModifierGroup({{stat = "electricResistance", amount = 0.75}, {stat = "electricStatusImmunity", amount = 1}})
  local bounds = mcontroller.boundBox()
end

function update(dt)
  mcontroller.controlModifiers({
      speedModifier = 1.50
    })
end

function uninit()
  
end
