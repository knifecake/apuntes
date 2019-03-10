---
title: Resumen GCS
author: Elias Hernandis
---

Curvas en el plano y en el espacio
==================================

Curvas en general
-----------------

-   Una **curva plana** es una aplicación continua
    $\alpha: I \subset \mathbb{R}^n$ definida por
    $\alpha(t) = (\alpha_1(t), \dots,  \alpha_n(t))$.

-   La **rapidez** es la derivada
    $\alpha'(t) = (\alpha_1'(t), \dots, \alpha_n'(t))$

-   La **velocidad** es la norma de la rapidez
    $v_\alpha(t) = \left\lVert\alpha'(t)\right\rVert$

    -   $\alpha$ es **regular** $\iff v_\alpha(t) > 0, \forall t \in I$

    -   La derivada (o rapidez) normalizada es
        $T_\alpha(t) = \frac{\alpha'(t)}{v_\alpha(t)}$.

-   La **longitud** es $l_\alpha = \int_I v_\alpha(t)dt$.

-   Una **parametrización** es un difeomorfismo
    $\varphi : J \subset \mathbb{R}\to I \subset \mathbb{R}$

    -   El **signo de una parametrización** es $$\begin{aligned}
                    \varepsilon(\varphi) = \begin{cases}
                    +1 &\text{ si } \varphi'(t) > 0, \forall t \in J \\
                    -1 &\text{ si } \varphi'(t) < 0, \forall t \in J
                    \end{cases}
                \end{aligned}$$

    -   Una curva está **parametrizada por longitud de arco** o p.p.a
        $\iff \left\lVert\alpha'(t)\right\rVert = 1,\ \forall t \in I$.

-   Si para dos curvas $\alpha, \beta$ existe $\varphi$ difeomorfismo
    tal que $\alpha = \beta \circ \varphi$ decimos que
    $\alpha \sim \beta$

    -   $\sim$ es una relación de equivalencia

    -   Dos curvas en una misma clase de equivalencia comparten la traza
        o imagen.

    -   Se cumple $$\begin{aligned}
                    \alpha'(t) = \beta'(\varphi(t))\varphi'(t) \\
                    \left\lVert\alpha'(t)\right\rVert =
                \end{aligned}$$

-   Una curva es **birregular** $\iff$ para una parametrización $\alpha$
    se tiene que $\alpha'$ y $\alpha''$ son linealmente independientes.

    -   En particular, $\alpha', \alpha'' \neq 0$ y por tanto $\alpha$
        también es regular.

-   El **diedro de Frenet-Serret** formado por los vectores
    $$\begin{aligned}
            \mathbf{t}_\alpha(t) &= \frac{\alpha'(s)}{\left\lVert\alpha'(s)\right\rVert} \\
            \mathbf{n}_\alpha(t) &= J\mathbf{t}_\alpha(s) \text{ con } J = \left(\begin{array}{cc}
            0 & -1 \\
            1 & 0
            \end{array}\right) 
        \end{aligned}$$

-   La **curvatura** (con signo) $$\begin{aligned}
            k_\alpha(t) &= \frac{\langle \mathbf{t}_\alpha'(t), \mathbf{n}_\alpha(t) \rangle}{\left\lVert\alpha'(t)\right\rVert} \\
            k_\alpha(t) &= \frac{\det(\alpha'(t),\ \alpha''(t))}{\left\lVert\alpha'(t)\right\rVert^3}&\text{ si } \alpha \text{ regular } \\
            k_\alpha(t) &= \left\lVert\alpha''(t)\right\rVert &\text{ si } \alpha \text{ está p.p.a. }
        \end{aligned}$$

    -   El **vector curvatura** es
        $\mathbf{k}_\alpha(t) = k_\alpha(t) \mathbf{n}_\alpha(t)$

    -   El **radio de curvatura** $$\begin{aligned}
                \rho_\alpha(t) = \frac{1}{k_\alpha(t)}
            \end{aligned}$$

    -   El **centro de curvatura** $$\begin{aligned}
                C_\alpha(t) = \alpha(t) + \frac{1}{k_\alpha(t)}\mathbf{n}_\alpha(t)
            \end{aligned}$$

    -   El **circulo osculador** o **circunferencia osculatriz**
        $$\begin{aligned}
                \{p \in \mathbb{R}^2 : \left\lVert p - C_\alpha(t)\right\rVert = \frac{1}{k_\alpha(t)},\text{ para } t \in I\text{ fijado } \}
            \end{aligned}$$

-   Las **ecuaciones de Frenet-Serret** salen de tomar la submatriz
    $2 \times 2$ de las ecuaciones en el espacio.

Curvas en el espacio
--------------------

-   El triedro de Frenet-Serret formado por los vectores
    $$\begin{aligned}
            \mathbf{t}_\alpha(s) &= \frac{\alpha'(s)}{\left\lVert\alpha'(s)\right\rVert} \\
            \mathbf{n}_\alpha(s) &= \frac{\mathbf{t}_\alpha'(s)}{\left\lVert\mathbf{t}_\alpha'(s)\right\rVert} \\
            \mathbf{b}_\alpha(s) &= \mathbf{t}_\alpha(s) \times \mathbf{n}_\alpha(s)
        \end{aligned}$$

-   Los 3 planos del triedro de Frenet-Serret para un punto $\alpha(s)$
    de la curva \[afines\] son:

    -   El **plano osculador**
        $\text{ span}\{\mathbf{t}_\alpha(s), \mathbf{n}_\alpha(s)\} + \alpha(s)$
        cuyos puntos $P$ cumplen
        $\langle P - \alpha(s), \mathbf{b}_\alpha(s) \rangle = 0$

    -   El **plano normal**
        $\text{ span}\{\mathbf{n}_\alpha(s), \mathbf{b}_\alpha(s)\} + \alpha(s)$
        cuyos puntos $P$ cumplen
        $\langle P - \alpha(s), \mathbf{t}_\alpha(s) \rangle = 0$

    -   El **plano rectificante**
        $\text{ span}\{\mathbf{t}_\alpha(s), \mathbf{b}_\alpha(s)\} + \alpha(s)$
        cuyos puntos cumplen
        $\langle P - \alpha(s), \mathbf{n}_\alpha(s) \rangle = 0$

-   La **curvatura** (siempre $\geq 0$) $$\begin{aligned}
            k_\alpha(s) &=  \frac{\left\lVert\mathbf{t}_\alpha'(s)\right\rVert}{\left\lVert\alpha'(s)\right\rVert}
        \end{aligned}$$ $$\begin{aligned}
            k_\alpha(s) &= \frac{\left\lVert\alpha'(s) \times \alpha''(s)\right\rVert}{\left\lVert\alpha''(s)\right\rVert^3}  &\text{ si } \alpha \text{ regular }\\
            k_\alpha(s) &= \left\lVert\alpha''(s)\right\rVert &\text{ si } \alpha \text{ p.p.a}
        \end{aligned}$$

-   El **vector curvatura** $$\begin{aligned}
            \mathbf{k}_\alpha(s) &= \frac{\mathbf{t}_\alpha'(s)}{\left\lVert\alpha'(s)\right\rVert} \text{ colineal con } \mathbf{n}_\alpha(s)
        \end{aligned}$$

-   La **torsión** $$\begin{aligned}
            \tau_\alpha(s) &= -\frac{\langle \mathbf{b}_\alpha'(s), \mathbf{n}_\alpha(s) \rangle}{\left\lVert\alpha'(s)\right\rVert}\\
            \tau_\alpha(s) &= \frac{\det(\alpha'(s),\ \alpha''(s),\ \alpha'''(s))}{\left\lVert\alpha'(s) \times \alpha''(s)\right\rVert^2} \text{ si } \alpha \text{ regular }
        \end{aligned}$$

-   Las ecuaciones de Frenet-Serret $$\begin{aligned}
            \mathbf{t}_\alpha' &= k_\alpha v_\alpha \mathbf{n}_\alpha \\
            \mathbf{n}_\alpha' &= -k_\alpha v_\alpha \mathbf{t}_\alpha + \tau_\alpha v_\alpha \mathbf{b}_\alpha \\
            \mathbf{b}_\alpha' &= -v_\alpha \tau_\alpha \mathbf{n}_\alpha
        \end{aligned}$$ $$\begin{aligned}
            \left(\begin{array}{c}
            \mathbf{t}_\alpha' \\
            \mathbf{n}_\alpha' \\
            \mathbf{b}_\alpha'
            \end{array}\right) = \left\lVert\alpha'(s)\right\rVert \left(\begin{array}{ccc}
            0 & k_\alpha & 0 \\
            -k_\alpha & 0 & \tau_\alpha \\
            0 & -\tau_\alpha & 0
            \end{array}\right)\left(\begin{array}{c}
            \mathbf{t}_\alpha \\
            \mathbf{n}_\alpha \\
            \mathbf{b}_\alpha
            \end{array}\right)
        \end{aligned}$$

Superficies
===========

-   Plano tangente (afín) a $S$ en $p = \mathbf{X}(u,v) \in S$
    $$\begin{aligned}
            T_pS = p + \underbrace{\text{ span}\{\mathbf{X}_u(u,v), \mathbf{X}_v(u,v)\}}_{\text{plano tangente vectorial}}
        \end{aligned}$$

-   Plano tangente sin parametrización $$\begin{aligned}
            T_pS = \{\alpha'(0) \mid \varepsilon > 0, \alpha: (-\varepsilon, \varepsilon) \to S \\\land\ \alpha(0) = p \\\land\ \alpha \text{ diferenciable }\}
        \end{aligned}$$
