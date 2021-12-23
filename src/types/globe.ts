export interface GlobeConfig {
  radius?: number,
  animates?: boolean,
  cameraAnimation?: {
    enabled?: boolean,
    damping?: number,
    speed?: number,
  },
  baseSphere?: {
    colorDay?: string,
    colorNight?: string,
    transparent?: boolean,
  },
  atmosphere?: {
    render?: boolean,
    color?: string,
    transparent?: boolean,
  },
  dotSphere?: {
    numberOfDots?: number,
    dotSize?: number,
    alphaMap?: string,
    color?: string,
    opacity?: number,
    transparent?: boolean,
  },
}
