function init()
  animator.setParticleEmitterOffsetRegion("energy", mcontroller.boundBox())
  animator.setParticleEmitterEmissionRate("energy", config.getParameter("emissionRate", 5))
  animator.setParticleEmitterActive("energy", true)

  effect.addStatModifierGroup({
      {stat = "energyRegenPercentageRate", amount = config.getParameter("regenBonusAmount", 10)},
      {stat = "energyRegenBlockTime", effectiveMultiplier = 0}
    })
  script.setUpdateDelta(3)
end

function update(dt)
  animator.setFlipped(mcontroller.facingDirection() == -1)
end

function uninit()

end
