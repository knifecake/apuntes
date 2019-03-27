# Desarrollos detallados

## Osciladores armónicos no amortiguados

\renewcommand{\Re}{\operatorname{Re}}
\renewcommand{\Im}{\operatorname{Im}}


$$mx'' = -kx$$

* La ec. diferencial es homogénea y se resuelve utilizando la ec. característica $m\lambda^2 + k = 0$.
* Como $m$ y $k$ son siempre positivas la ec. característica tiene soluciones complejas conjugadas
  $$\lambda_1 = i\sqrt{\frac{k}{m}},\qquad \lambda_2 = -i\sqrt{\frac{k}{m}}$$
* Físicamente, $\omega = \sqrt{\frac{k}{m}}$
* Por tanto la solución general de la EDO es
  \begin{align*}
    x(t) &= c_1e^{\lambda t} + c_2e^{\overline{\lambda}t} \\
         &= c_1e^{i\omega t} + c_2e^{-i\omega t} \\
         &= c_1\left( \cos \omega t + i\sin \omega t \right) + c_2\left( \cos -\omega t + i \sin -\omega t\right) \\
         &= c_1\left( \cos \omega t + i\sin \omega t \right) + c_2\left( \cos \omega t - i \sin \omega t\right) \\
         &= (c_1 + c_2) \cos \omega t + (c_1 - c_2)i \sin \omega t \\
    x'(t) &= ic_1 \omega e^{i\omega t} - i c_2 \omega e^{- i \omega t}
  \end{align*}

* Para un PVI dado en el que $x(0) = x_0$ y $x'(0) = v_0$ nos queda:
  $$
    \begin{cases}
      x_0 &= (c_1 + c_2) \\
      v_0 &= i\omega (c_1 - c_2)
    \end{cases} \implies c_1 = \frac{x_0}{2} - i\frac{v_0}{2\omega},\qquad c_2 = \frac{x_0}{2} + i\frac{v_0}{2\omega} = \overline{c_1}
  $$
* Utilizando que $e^{a+bi} = e^a\left(\cos bi + i\sin bi\right)$ nos queda la solución en forma trigonométrica:
  \begin{align*}
    x(t) &= c_1\left(\cos(\omega t) + i\sin(\omega t)\right) + \overline{c_1}\left(\cos(\omega t) - i\sin(\omega t)\right) \\
         &= (c_1 + \overline{c_1})\cos \omega t + i(c_1 - \overline{c_1})\sin \omega t \\
         &= (2\Re c_1)\cos \omega t + i2\Im c_1 \sin \omega t \\
         &= x_0\cos\omega t - \frac{v_0}{\omega} \sin \omega t
  \end{align*}

## Osciladores armónicos amortiguados

$$mx'' = -\mu x - kx$$

donde $\mu \geq 0$ es el coeficiente de rozamiento y $k$ es la constante del muelle.

* La velocidad angular $\omega$ no cambia a medida que se amortiguan las oscilaciones ($\omega$ no depende de $\mu$).
* La ec. característica $m\lambda^2 + \mu \lambda + k = 0$ tiene soluciones $\lambda_1$ y $\lambda_2$ que pueden ser de las siguientes formas:
  * Ambas complejas y por tanto conjugadas:

  ![Oscilador armónico infra-amortiguado ($\lambda, \overline{\lambda} \in \mathbb{C}$)](http://faculty.sfasu.edu/judsontw/ode/html-20180819/images/secondorder01-under-damped-oscillator.svg){width=50%}

  Sea $\lambda = a + bi$ y su conjugada. Entonces
  \begin{align*}
    x(t) &= c_1e^{\lambda t} + c_2e^{\overline{\lambda}t} \\
         &= c_1e^{at  + ib t} + c_2e^{at -ib t} \\
         &= e^a\left( c_1e^{ibt} + c_2e^{-ibt} \right) \\
         &= e^a\left( c_1\left( \cos b t + i\sin b t \right) + c_2\left( \cos -b t + i \sin -b t\right) \right) \\
         &= e^a\left( c_1\left( \cos b t + i\sin b t \right) + c_2\left( \cos b t - i \sin b t\right) \right) \\
         &= e^a\left( (c_1 + c_2) \cos b t + (c_1 - c_2)i \sin b t \right) \\
  \end{align*}
  * Si tenemos un PVI de la forma $x(0) = x_0$ y $x'(0) = v_0$ entonces

  * Ambas reales y necesariamente negativas para que la trayectoria decaiga al punto de equilibrio. No se produce oscilación, es decir, una vez el objeto cruza el punto de equilibrio no lo vuelve a hacer.
