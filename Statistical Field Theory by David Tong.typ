#show math.equation: set block(breakable: true)

#set heading(numbering: "1.1")

#outline(indent: auto)

= From Spins to Fields

== The Ising Model

Energy $ E = - B sum_i s_i - J sum_(angle.l i j angle.r) s_i s_j, quad s_i in {plus.minus 1}, quad i in {1, ..., N} $

Probability of a configuration of spins $ p[s_i] = exp(- beta E[s_i]) / Z, beta = 1 / T $

magnetization $ m = sum_i s_i / N in [-1, +1] $

Partition function(and effective free energy) $ Z(T, J, B) = sum_({s_i}) exp(- beta E[s_i]) = sum_m sum_({s_i} | m) exp(- beta E[s_i]) := sum_m exp(- beta F(m)) $

$ f(m) = F(m) / N $

$
  Z = N / 2 integral_(-1)^(+1) dif m exp(- beta F(m)) tilde integral dif m exp(- beta N f(m)) approx exp(- beta N f_min)
$

Mean field theory $ m = sum_i s_i / N in [-1, +1] $

$ => E / N = - B m - 1 / 2 J q m^2, q = 2 dim $

$ => exp(- beta N f(m)) approx (N!) / (N_arrow.t! (N - N_arrow.t)!) $

$
  => f(m) approx & - T log 2 - B m + 1 / 2 (T - T_c) m^2 + 1 / 12 T m^4, quad T_c = J q \
  tilde & - B m + 1 / 2 (T - T_c) m^2 + 1 / 12 T m^4
$

== Landau Approach to Phase Transitions

=== $B = 0$

$
  f(m) = & 1 / 2 (T - T_c) m^2 + 1 / 12 T m^4 \
  f'(m) = & (T - T_c) m + 1 / 3 T m^3 \
  f''(m) = & (T - T_c) + T m^2
$

For $T > T_c$, $ f'(m_min) = 0 => m_min = 0 \& f''(0) > 0 => f_min = f(m_min) = 0 $

For $T lt.tilde T_c$, $ f'(m_min) = 0 => m_min^2 in {0, (3 (T_c - T)) / T} \& f''(0) < 0 \& f''(plus.minus sqrt((3 (T_c - T)) / T)) > 0 => f_min = f(plus.minus (3 (T_c - T)) / T) = - 3 / 4 (T_c - T)^2 / T $

$
  c = 1 / N (partial E) / (partial T) = 1 / N beta^2 partial^2 / (partial beta^2) log Z = cases(0, 1 / N beta^2 partial^2 / (partial beta^2) [
    beta N dot.c 3 / 4 (T_c - T)^2 / T
  ] = 3 / 2 T_c^2 / T^2)
$

=== $B eq.not 0$

$
  f(m) = & - B m + 1 / 2 (T - T_c) m^2 + 1 / 12 T m^4 \
  f'(m) = & - B + (T - T_c) m + 1 / 3 T m^3 \
  f''(m) = & (T - T_c) + T m^2
$

$ T = T_c, f(m) approx - B m + 1 / 12 T_c m^4, quad f'(m_min) = 0 => m_min = (3 B \/ T_c)^(1 \/ 3) \& f''(m_min) > 0 $

Magnetic susceptibility $ chi = lr((partial m) / (partial B) |)_(B = 0, T -> T_c) $

For $T gt.tilde T_c$, $ f(m) approx - B m + 1 / 2 (T - T_c) m^2, quad f'(m_min) = 0 => m_min = B / (T - T_c) => chi = 1 / (T - T_c) $

For $T lt.tilde T_c$, $ f'(m_min) = 0 => m_min = sqrt((3 (T_c - T)) / T) + B / (2 (T_c - T)) => chi = 1 / (T_c - T) $

== Landau-Ginzburg Theory

$ m -> m(bold(x)) $

$
  Z = sum_(m(bold(x))) sum_({s_i} | m(bold(x))) exp(- beta E[s_i]) := sum_(m(
    bold(x)
  )) exp(- beta F[m(bold(x))]) => Z = integral cal(D) m(bold(x)) exp(- beta F[m(bold(x))])
$

$ p[m(bold(x))] = exp(- beta F[m(bold(x))]) / Z $

=== The Landau-Ginzburg Free Energy

Locality, Transition and Rotation Invariance, $ZZ_2$ Symmetry, Analyticity => $ F[m(bold(x))] = integral dif^d x [1 / 2 alpha_2(T) m^2 + 1 / 4 alpha_4(T) m^4 + 1 / 2 gamma(T) (nabla m)^2 + ...], quad alpha_4(T) > 0, gamma(T) > 0, alpha_2(T < T_c) dot.c alpha_2(T > T_c) < 0 $

=== The Saddle Point and Domain Walls

$ (delta F) / (delta m) = 0 => gamma nabla^2 m = alpha_2 m + alpha_4 m^3 $

Constant solution $ m = cases(0 quad & T > T_c, plus.minus sqrt(- alpha_2 \/ alpha_4) quad & T > T_c) $

Domain walls $ T < T_c, m = m(x) => gamma (dif^2 m) / (dif x^2) = alpha_2 m + alpha_4 m^3 => m = sqrt(- alpha_2 / alpha_4) tanh ((x - X) / W), W = sqrt(- (2 gamma) / alpha_2) $

Free energy of the domain wall $ integral dif^d x 1 / 2 gamma ((dif m) / (dif x))^2 tilde L^(d - 1) sqrt(- (gamma alpha_2^3) / alpha_4^2) $

= My First Path Integral

$ m(bold(x)) -> phi.alt(bold(x)) $

$ Z = integral cal(D) m(bold(x)) exp(- beta F[phi.alt(bold(x))]) $

$
  F[phi.alt(bold(x))] = & integral dif^d x [
    1 / 2 alpha_2(T) phi.alt^2 + 1 / 4 alpha_4(T) phi.alt^4 + 1 / 2 gamma(T) (nabla phi.alt)^2 + ...
  ] \
  = & cases(1 / 2 integral dif^d x (gamma nabla phi.alt nabla phi.alt + mu^2 phi.alt^2)\, & mu^2 = alpha_2(
    T
  ) quad & T >> T_c, F[sqrt(- alpha_2 \/ alpha_4)] + 1 / 2 integral dif^d x [alpha'_2(T) tilde(phi.alt)^2 + gamma(T) (nabla tilde(phi.alt))^2 + ...]\, & tilde(phi.alt) = phi.alt - sqrt(- alpha_2 \/ alpha_4)\, alpha'_2(T) > 0 quad & T << T_c)
$

== The Thermodynamic Free Energy Revisited

$
  phi.alt_bold(k) = integral dif^d x exp(- upright(i) bold(k) dot.c bold(x)) phi.alt(bold(x)), quad phi(bold(x)) in RR => phi.alt_bold(k)^star = phi.alt_(- bold(k)), quad forall |bold(k)| > Lambda, phi.alt_bold(k) = 0
$

$
  V = L^d, bold(k) = (2 pi) / L bold(n), bold(n) in ZZ^d, phi(bold(x)) = 1 / V sum_bold(k) exp(upright(i) bold(k) dot.c bold(x)) phi.alt_bold(k) => phi(bold(x)) = integral (dif^d k) / (
    2 pi
  )^d exp(upright(i) bold(k) dot.c bold(x)) phi.alt_bold(k)
$

$
  F[phi.alt_bold(k)] = 1 / 2 integral (dif^d k) / (2 pi)^d (
    gamma k^2 + mu^2
  ) phi.alt_bold(k) phi.alt_(- bold(k)) = 1 / 2 integral (dif^d k) / (2 pi)^d (
    gamma k^2 + mu^2
  ) phi.alt_bold(k) phi.alt_bold(k)^star
$

$ integral cal(D) phi.alt(bold(x)) = product_bold(k) [cal(N) integral dif phi.alt_bold(k) dif phi.alt_bold(k)^star] $

$
  Z = & product_bold(k) cal(N) integral dif phi.alt_bold(k) dif phi.alt_bold(k)^star exp[
    - beta / 2 integral (dif^d k) / (2 pi)^d (gamma k^2 + mu^2) phi.alt_bold(k) phi.alt_bold(k)^star
  ] \
  = & product_bold(k) cal(N) integral dif phi.alt_bold(k) dif phi.alt_bold(k)^star exp[
    - beta / (2 V) sum_bold(k) (gamma k^2 + mu^2) phi.alt_bold(k) phi.alt_bold(k)^star
  ] \
  = & product_bold(k) [
    cal(N) integral dif phi.alt_bold(k) dif phi.alt_bold(k)^star exp(- beta / (2 V) (gamma k^2 + mu^2) phi.alt_bold(k) phi.alt_bold(k)^star)
  ]\
  = & product_bold(k) cal(N) sqrt((2 pi T V) / (gamma k^2 + mu^2)), quad integral_(- infinity)^(+ infinity) dif x exp(- x^2 / (2 a)) = sqrt(2 pi a)
$

$
  F_"thermo" / V = & - T / V log Z \
  = & - T / (2 V) sum_k log [(2 pi T V cal(N)^2) / (gamma k^2 + mu^2)] \
  = & - T / 2 integral (dif^d k) / (2 pi)^d log [(2 pi T V cal(N)^2) / (gamma k^2 + mu^2)]
$

=== The Heat Capacity

$
  c = & C / V = beta^2 / V partial^2 / (partial beta^2) log Z = 1 / 2 (
    T^2 partial^2 / (partial T^2) + 2 T partial / (partial T)
  ) integral (dif^d k) / (2 pi)^d log [(2 pi T V cal(N)^2) / (gamma k^2 + mu^2)] \
  = & 1 / 2 integral (dif^d k) / (2 pi)^d [1 - (2 T) / (gamma k^2 + mu^2) + T^2 / (gamma k^2 + mu^2)^2]
$

$
  integral_0^Lambda dif k k^(d - 1) / (gamma k^2 + mu^2) tilde cases(Lambda^(d - 2) quad & d >= 2, mu^(d - 2) quad & d < 2), quad integral_0^Lambda dif k k^(d - 1) / (
    gamma k^2 + mu^2
  )^2 tilde cases(Lambda^(d - 4) quad & d >= 4, mu^(d - 4) quad & d < 4)
$

$ c tilde |T - T_c|^(- alpha), quad alpha = - (d - 4) / 2, quad d < 4 $

== Correlation Functions

$ angle.l phi.alt(bold(x)) angle.r = cases(0 quad & T > T_c, plus.minus sqrt(- alpha_2 \/ alpha_4) quad & T < T_c) $

Connected correlation function $ angle.l phi.alt(bold(x)) phi.alt(bold(y)) angle.r_c = angle.l phi.alt(bold(x)) phi.alt(bold(y)) angle.r - angle.l phi.alt(bold(x)) angle.r^2 $

$
  Z[B(bold(x))] = integral cal(D) phi.alt exp(-beta F), quad F[phi.alt(bold(x))] = integral dif^d x [
    gamma / 2 (nabla phi)^2 + mu^2 / 2 phi^2(bold(x)) - B(bold(x)) phi.alt(bold(x))
  ]
$

$
  1 / beta (delta log Z) / (delta B(bold(x))) = & angle.l phi.alt(bold(x)) angle.r_B \
  1 / beta^2 (delta^2 log Z) / (delta B(bold(x)) delta B(
    bold(y)
  )) = & angle.l phi.alt(bold(x)) phi.alt(bold(y)) angle.r_B - angle.l phi.alt(bold(x)) angle.r_B angle.l phi.alt(bold(y)) angle.r_B \
  lr(1 / beta^2 (delta^2 log Z) / (delta B(bold(x)) delta B(
    bold(y)
  )) |)_(B = 0) = & angle.l phi.alt(bold(x)) phi.alt(bold(y)) angle.r
$

=== The Gaussian Path Integral

$
  F[phi.alt_bold(k)] = & integral (dif^d k) / (2 pi)^d [
    1 / 2 (gamma k^2 + mu^2) phi.alt_bold(k) phi.alt_(- bold(k)) - B_(- bold(k)) phi.alt_bold(k)
  ] \
  F[hat(phi.alt)_bold(k)] = & integral (dif^d k) / (2 pi)^d [
    1 / 2 (gamma k^2 + mu^2) |hat(phi.alt)_bold(k)|^2 - 1 / 2 (|B_bold(k)|^2) / (gamma k^2 + mu^2)
  ], quad hat(phi.alt)_bold(k) = phi.alt_bold(k) - B_bold(k) / (gamma k^2 + mu^2) \
  Z = & product_bold(k) integral dif hat(phi.alt)_bold(k) dif hat(phi.alt)_bold(k)^star exp(- beta F[hat(phi.alt)_bold(k)]) \
  = & exp(- beta F_"thermo") exp(- beta / 2 integral (dif^d k) / (2 pi)^d (|B_bold(k)|^2) / (gamma k^2 + mu^2)) \
  = & exp(- beta F_"thermo") exp(- beta / 2 integral dif^d x dif^d y B(bold(x)) G(bold(x) - bold(y)) B(bold(y))), quad G(
    bold(x)
  ) integral (dif^d k) / (2 pi)^d exp(- upright(i) bold(k) dot.c bold(x)) / (gamma k^2 + mu^2)
$

$ angle.l phi.alt(bold(x)) phi.alt(bold(y)) angle.r = 1 / beta G(bold(x) - bold(y)) $

$
  G(bold(x)) = & G(r = |bold(x)|) = 1 / gamma integral (dif^d k) / (
    2 pi
  )^d exp(- upright(i) bold(k) dot.c bold(x)) / (k^2 + 1 \/ xi^2), quad xi^2 = gamma / mu^2 \
  = & 1 / gamma integral (dif^d k) / (
    2 pi
  )^d integral_0^infinity dif t exp(- upright(i) bold(k) dot.c bold(x) - t (k^2 + 1 \/ xi^2)), quad 1 / (k^2 + 1 \/ xi^2) = integral_0^infinity dif t exp(- t (k^2 + 1 \/ xi^2)) \
  = & 1 / gamma integral (dif^d k) / (
    2 pi
  )^d integral_0^infinity dif t exp(- t (bold(k) + upright(i) bold(x) \/ 2 t)^2) exp(- r^2 \/ 4 t - t \/ xi^2) \
  = & 1 / (gamma (4 pi)^(d / 2)) integral_0^infinity dif t t^(- d / 2) exp(- r^2 \/ 4 t - t \/ xi^2) \
  tilde & integral_0^infinity dif t exp(- S(t)), quad S(t) = r^2 / (4 t) + t / xi^2 + d / 2 log t \
  tilde & integral_0^infinity dif t exp(- S(t_star) + S''(t_star) t^2 \/ 2) = sqrt(pi / (2 S''(t_star))) exp(- S(t_star)), quad S'(
    t_star
  ) = 0 => t_star = xi^2 / 2 (- d / 2 + sqrt(d^2 / 4 + r^2 / xi^2)) \
  tilde & cases(1 / xi^((d - 3) \/ 2) exp(- r \/ xi) / r^((d - 1) \/ 2)\, quad & r >> xi\, t_star approx r xi \/ 2, 1 / r^(d - 2)\, quad & r << xi\, t_star approx r^2 \/ 2 d)
$

Ornstein-Zernicke correlation

=== The Correlation Function is a Green’s Function

$
  integral_(- infinity)^(+ infinity) dif^n y exp(- 1 / 2 bold(y) G^(-1) bold(y)) = & op(det, limits: #false)^(1 \/ 2) (
    2 pi G
  ) \
  integral_(- infinity)^(+ infinity) dif^n y exp(- 1 / 2 bold(y) G^(-1) bold(y) + bold(B) dot.c bold(y)) = & op(det, limits: #false)^(1 \/ 2) (
    2 pi G
  ) exp(1 / 2 bold(B) G bold(B))
$

$
  F[phi.alt(bold(x))] = & integral dif^d x [
    1 / 2 gamma (nabla phi.alt)^2 + 1 / 2 mu^2 phi.alt^2(bold(x)) + B(bold(x)) phi.alt(bold(x))
  ] \
  = & integral dif^d x integral dif^d y 1 / 2 phi.alt(bold(x)) G^(-1)(
    bold(x), bold(y)
  ) phi.alt(bold(y)) + integral dif^d x B(bold(x)) phi.alt(bold(x)), quad G^(-1)(bold(x), bold(y)) = delta^d (
    bold(x) - bold(y)
  ) (- gamma nabla_y^2 + mu^2)\
$

$
  (- gamma nabla_x^2 + mu^2) G(bold(x), bold(y)) = delta^d (bold(x) - bold(y)) => G(bold(x)) = integral (dif^d k) / (
    2 pi
  )^d exp(- upright(i) bold(k) dot.c bold(x)) / (gamma k^2 + mu^2)
$

Susceptibility $ chi(bold(x), bold(y)) = (delta angle.l phi.alt(bold(x)) angle.r) / (delta B(bold(y))) = beta angle.l phi.alt(bold(x)) phi.alt(bold(y)) angle.r => chi = integral dif^d x chi(bold(x), 0) = beta integral dif^d x angle.l phi.alt(bold(x)) phi.alt(0) angle.r $

Propagator

=== The Correlation Length

$ mu^2 tilde |T - T_c| => xi tilde 1 / (|T - T_c|)^(1 \/ 2) $

=== The Upper Critical Dimension

Ginzburg criterion $ (angle.l phi.alt^2 angle.r) / (angle.l phi.alt angle.r^2) = (integral_0^xi dif^d x angle.l phi.alt(bold(x)) phi.alt(0) angle.r) / (integral_0^xi dif^d x (sqrt(- alpha_2 \/ alpha_4))^2) tilde 1 / ((sqrt(- alpha_2 \/ alpha_4))^2 xi^d) integral_0^xi dif r r^(d - 1) / r^(d - 2) tilde xi^(2 - d) / (- alpha_2 \/ alpha_4) tilde |T - T_c|^((d - 4) \/ 2) << 1 => d >= d_c = 4 $

== The Analogy with Quantum Field Theory

Wick rotation $ tau = upright(i) t => Z = integral cal(D) phi.alt exp(upright(i) S[phi.alt] \/ planck.reduce) -> Z = integral cal(D) phi.alt exp(- S_E [phi.alt] \/ planck.reduce) $

= The Renormalisation Group

== What’s the Big Idea?

$
  F[phi.alt] = integral dif^d x [
    1 / 2 nabla phi.alt dot.c nabla phi.alt + 1 / 2 mu^2 phi.alt^2 + g phi.alt^4 + ...
  ], quad mu^2 tilde T - T_c cases(> 0 quad & "disordered phase", < 0 quad & "ordered phase")
$

$ Z = integral cal(D) phi.alt exp(- F[phi.alt]) $

$ phi.alt_bold(k) "for" k > Lambda $

$
  phi.alt_bold(k) = phi.alt_bold(k)^- + phi.alt_bold(k)^+, quad phi.alt_bold(k)^- = cases(phi.alt_bold(k) quad & k < Lambda', 0 quad & k > Lambda'), quad phi.alt_bold(k)^+ = cases(phi.alt_bold(k) quad & Lambda' < k < Lambda, 0 quad & "otherwise"), quad Lambda' = Lambda / zeta >> 1 / L, zeta in [
    1, +infinity
  )
$

$
  F[phi.alt_bold(k)] = & F_0[phi.alt_bold(k)^-] + F_0[phi.alt_bold(k)^+] + F_I [phi.alt_bold(k)^-, phi.alt_bold(k)^+] \
  Z = & integral product_(k < Lambda) dif phi.alt_bold(k) exp(- F) = integral product_(k < Lambda') dif phi.alt_bold(k)^- exp(- F_0[phi.alt_bold(k)^-]) integral product_(Lambda' < k < Lambda) dif phi.alt_bold(k)^+ exp(- F_0[phi.alt_bold(k)^+]) exp(- F_I [phi.alt_bold(k)^-, phi.alt_bold(k)^+]) \
  = & integral cal(D) phi.alt^- exp(- F'[phi.alt^-]), quad exp(- F'[phi.alt^-]) = exp(- F_0[phi.alt_bold(k)^-]) integral product_(Lambda' < k < Lambda) dif phi.alt_bold(k)^+ exp(- F_0[phi.alt_bold(k)^+]) exp(- F_I [phi.alt_bold(k)^-, phi.alt_bold(k)^+])
$

Wilsonian effective free energy

$
  F'[phi.alt] = integral dif^d x [
    1 / 2 gamma' nabla phi.alt dot.c nabla phi.alt + 1 / 2 mu'^2 phi.alt^2 + g' phi.alt^4 + ...
  ]
$

$
  & bold(k)' = zeta bold(k), quad bold(x)' = bold(x) / zeta, quad phi.alt'_(
  bold(k)'
  ) = sqrt(gamma') phi.alt_bold(k)^-, quad phi.alt'(bold(x)') = sqrt(gamma') phi.alt^-(bold(x)) \
  => & F_zeta [phi.alt'] = integral dif^d x [
    1 / 2 nabla phi.alt' dot.c nabla phi.alt' + 1 / 2 mu^2(zeta) phi.alt'^2 + g(zeta) phi.alt'^4 + ...
  ]
$

=== Universality Explained

#quote[Even before we do any calculations, there are general lessons to be extracted from the framework above. Let’s suppose we start from some point in theory space. This can be arbitrarily complicated, reflecting the fact that it contains informations about all the microscopic, short-distance degrees of freedom.

  Of course, we care little about most of these details so, in an attempt to simplify our lives we perform a renormalisation group transformation, integrating out short distance degrees of freedom to generate a new theory which describes the long wavelength physics. And then we do this again. And then we do this again. Where do we end up?

  There are essentially two possibilities: we could flow off to infinity in theory space, or we could converge towards a fixed point. These are points which are invariant under a renormalisation group transformation. (One could also envisage further possibilities, such as converging towards a limit cycle. It turns out that these can be ruled out in many theories of interest.)]

== Scaling

$
  [x] = -1, => [partial \/ partial x] = +1, quad F[
    phi.alt
  ] = integral dif^d x 1 / 2 nabla phi.alt dot.c nabla phi.alt + ... => [
    phi.alt
  ] = (d - 2) / 2 => angle.l phi.alt(bold(x)) phi.alt(0) angle.r tilde 1 / r^(d - 2)
$

Scaling dimension & anomalous dimension $
  angle.l phi.alt(bold(x)) phi.alt(0) angle.r tilde a^eta / r^(d - 2 + eta) tilde 1 / r^(d - 2 + eta), Lambda tilde 1 / a => phi.alt(bold(x)) -> phi.alt'(
    bold(x)'
  ) = zeta^(Delta_phi.alt) phi.alt(bold(x)), Delta_phi.alt = (d - 2 + eta) / 2
$

=== Critical Exponents Revisited

$ xi tilde t^(- nu), quad t = (|T - T_c|) / T_c $

$ xi -> xi / zeta, "i.e." Delta_xi = -1 => t -> zeta^(Delta_t) t, quad Delta_t = 1 / nu $

Josephson relation / hyperscaling relation $
  F_"thermo" (t) = integral dif^d x f(t) => f(
    t
  ) tilde t^(d nu) => c tilde (partial^2 f) / (partial t^2) tilde t^(d nu - 2) tilde t^(- alpha), quad alpha = 2 - d nu
$

$ phi.alt tilde t^beta => Delta_phi.alt = beta Delta_t => beta = nu Delta_phi.alt = nu dot.c (d - 2 + eta) / 2 $

$ integral dif^d x B phi.alt => Delta_phi.alt + Delta_B = d => Delta_B = (d + 2 - eta) / 2 $

Fisher’s identity $
  chi = lr((partial phi.alt) / (partial B) |)_T tilde t^gamma => Delta_phi.alt - Delta_B = - gamma / nu => gamma = nu (
    2 - eta
  )
$

$ phi.alt tilde B^(1 \/ delta) => delta = Delta_B / Delta_phi.alt = (d + 2 - eta) / (d - 2 + eta) $

=== The Relevance of Scaling

$ F[phi.alt] tilde integral dif^d x g_cal(O) cal(O)(bold(x)) $

$
  bold(x) -> bold(x)' = bold(x) / zeta => cal(O)(bold(x)) -> cal(O)'(bold(x)') = zeta^(Delta_cal(O)) cal(O)(
    bold(x)
  ) => Delta_(g_cal(O)) = d - Delta_cal(O)
$

== The Gaussian Fixed Point

$
  F_0[phi.alt] = integral dif^d x [
    1 / 2 nabla phi.alt dot.c nabla phi.alt + 1 / 2 mu_0^2 phi.alt^2
  ] = integral^Lambda (dif^d k) / (2 pi)^d 1 / 2 (k^2 + mu_0^2) phi.alt_(bold(k)) phi.alt_(- bold(k))
$

$ F_0[phi.alt] = F_0[phi.alt^-] + F_0[phi.alt^+] $

$
  exp(- F'[phi.alt^-]) = [
    integral cal(D) phi.alt^+ exp(- F_0[phi.alt^+])
  ] exp(- F_0[phi.alt^-]) = cal(N) exp(- F_0[phi.alt^-])
$

$ bold(k)' = zeta bold(k) quad phi.alt'_(bold(k)') = zeta^(- w) phi.alt_bold(k)^- $

$
  F_0[phi.alt^-] = & integral^(Lambda / zeta) (dif^d k) / (2 pi)^d 1 / 2 (
    k^2 + mu_0^2
  ) phi.alt_bold(k)^- phi.alt_(- bold(k))^- \
  = & integral^Lambda (dif^d k') / (2 pi)^d 1 / (2 zeta^d) (
    k'^2 / zeta^2 + mu_0^2
  ) zeta^(2 w) phi.alt'_bold(k)' phi.alt'_(- bold(k)') \
  F'_0[phi.alt'] = & integral^Lambda (dif^d k') / (2 pi)^d 1 / 2 (
    k'^2 + zeta^2 mu_0^2
  ) phi.alt'_bold(k)' phi.alt'_(- bold(k)'), quad w = (d + 2) / 2 \
  = & integral^Lambda (dif^d k) / (2 pi)^d 1 / 2 (k^2 + mu^2(zeta)) phi.alt'_bold(k) phi.alt'_(- bold(k)), quad mu^2(
    zeta
  ) = zeta^2 mu_0^2
$

$ xi -> xi / zeta, quad dif mu^2 / dif zeta = 0 => mu^2 in {0, infinity} $ Gaussian fixed point

=== In the Vicinity of the Fixed Point

$
  F[phi.alt] = integral dif^d x [
    1 / 2 nabla phi.alt dot.c nabla phi.alt + 1 / 2 mu_0^2 phi.alt^2 + sum_(n = 4)^(infinity) g_(0, n) phi.alt^n
  ], quad n "even"
$

$ g_(0, n) -> g'_n = g_(0, n) #text(fill: gray)[$+ delta g_n$] $

$
  bold(x)' = bold(x) / zeta , phi.alt'(bold(x)') = zeta^(Delta_phi.alt) phi.alt(bold(x)) => F[
    phi.alt'
  ] = & integral dif^d x' zeta^d [
    1 / 2 zeta^(- 2 - 2 Delta_phi.alt) nabla' phi.alt' dot.c nabla' phi.alt' + 1 / 2 mu_0^2 zeta^(- 2 Delta_phi.alt) phi.alt'^2 + sum_(n = 4)^infinity g_(0, n) zeta^(- n Delta_phi.alt) phi.alt'^n
  ] \
  = & integral dif^d x' [
    1 / 2 nabla' phi.alt' dot.c nabla' phi.alt' + 1 / 2 mu^2(zeta) phi.alt'^2 + sum_(n = 4)^infinity g_n (
      zeta
    ) phi.alt'^n
  ], quad Delta_phi.alt = (d - 2) / 2 \
  g_n (zeta) = & zeta^(d - n Delta_phi.alt) g_(0, n) = zeta^((1 - n\/ 2) d + n) g_(0, n) \
  g_4(zeta) = & zeta^(4 - d) g_(0, 4) \
  g_6(zeta) = & zeta^(6 - 2 d) g_(0, 6) \
$

=== Dangerously Irrelevant

$ phi.alt_0 tilde (t / g_4)^(1 \/ 2) tilde.not t^(1 \/ 2) $

=== An Aside: The Emergence of Rotational Symmetry

== RG with Interactions

$ F[phi.alt] = integral dif^d x [1 / 2 nabla phi.alt dot.c nabla phi.alt + 1 / 2 mu_0^2 phi.alt^2 + g_0 phi.alt^4] $

$ phi.alt_bold(k) = phi.alt_bold(k)^- + phi.alt_bold(k)^+ $

$ F[phi.alt] = F_0[phi.alt^-] + F_0[phi.alt^+] + F_I[phi.alt^-, phi.alt^+] $

$
  exp(- F'[phi.alt^-]) = & exp(- F_0[phi.alt_bold(k)^-]) integral cal(D) phi.alt_bold(k)^+ exp(- F_0 [phi.alt_bold(k)^+]) exp(- F_I [phi.alt_bold(k)^-, phi.alt_bold(k)^+]) \
  = & exp(- F_0[phi.alt_bold(k)^-]) angle.l exp(- F_I [phi.alt_bold(k)^-, phi.alt_bold(k)^+]) angle.r_+
$

$
  F'[phi.alt^-] = & F_0[phi.alt_bold(k)^-] - log angle.l exp(- F_I [phi.alt_bold(k)^-, phi.alt_bold(k)^+]) angle.r_+ \
  = & F_0[phi.alt_bold(k)^-] - log angle.l 1 - F_I + 1 / 2 F_I^2 + ... angle.r_+ \
  = & F_0[phi.alt_bold(k)^-] - angle.l F_I angle.r_+ + 1 / 2 [angle.l F_I^2 angle.r_+ - angle.l F_I angle.r_+^2] + ...
$

=== Order $g_0$

$
  angle.l F_I angle.r_+ = & 6 g_0 integral product_(i = 1)^4 (dif^d k_i) / (
    2 pi
  )^d phi.alt_(bold(k)_1)^- phi.alt_(bold(k)_2)^- dot.c angle.l phi.alt_(bold(k)_3)^+ phi.alt_(bold(k)_4)^+ angle.r dot.c (
    2 pi
  )^d delta^d (sum_i bold(k)_i), quad angle.l phi.alt_(bold(k)_3)^+ phi.alt_(bold(k)_4)^+ angle.r = (2 pi)^d delta^d (
    bold(k) + bold(k)'
  ) G_0(k), G_0(k) = 1 / (k^2 + mu^0) \
  = & 6 g_0 integral_0^(Lambda \/ zeta) (dif^d k) / (
    2 pi
  )^d phi.alt_bold(k)^- phi.alt_(- bold(k))^- integral_(Lambda \/ zeta)^(Lambda) (dif^d q) / (2 pi)^d 1 / (q^2 + mu_0^2)
$

$
  mu_0^2 -> mu'^2 = mu_0^2 + 12 g_0 integral_(Lambda \/ zeta)^(Lambda) (dif^d q) / (2 pi)^d 1 / (q^2 + mu_0^2)
$

$ bold(k)' = zeta bold(k), quad phi.alt'_bold(k) = zeta^(- w) phi.alt_(bold(k) \/ zeta)^-, quad w = (d + 2) / 2 $

$
  mu^2(zeta) = zeta^2 (
    mu_0^2 + 12 g_0 integral_(Lambda \/ zeta)^(Lambda) (dif^d q) / (2 pi)^d 1 / (q^2 + mu_0^2)
  ), quad g(zeta) = zeta^(4 - d) g_0
$

=== Order $g_0^2$

$ F'[phi.alt^-] tilde - 1 / 2 (angle.l F_I^2 angle.r - angle.l F_I angle.r^2) $

$
  1 / 2 angle.l F_I^2 angle.r_+ tilde & 1 / 2 binom(4, 2)^2 g_0^2 integral_0^(Lambda \/ zeta) product_(i = 1)^4 [
    (dif^d k_i) / (2 pi)^d phi.alt_(bold(k)_i)^-
  ] integral_(Lambda \/ zeta)^Lambda [
    (dif^d q_i) / (2 pi)^d
  ] angle.l phi.alt_(bold(q)_1)^+ phi.alt_(bold(q)_2)^+ phi.alt_(bold(q)_3)^+ phi.alt_(bold(q)_4)^+ angle.r \
  & dot.c (2 pi)^d delta^d (bold(k)_1 + bold(k)_2 + bold(q)_1 + bold(q)_2) delta^d (
    bold(k)_3 + bold(k)_4 + bold(q)_3 + bold(q)_4
  ) \
$

Wick’s theorem $ angle.l exp(B_a phi.alt_a) angle.r = 1 / cal(N) integral_(- infinity)^(+ infinity) dif^n y exp(- phi.alt dot.c G^(-1) phi.alt \/ 2 + B dot.c phi.alt) = exp(B dot.c G B \/ 2) = exp (B_a angle.l phi.alt_a phi.alt_b angle.r B_b \/ 2), G_(a b) = angle.l phi.alt_a phi.alt_b angle.r $

$
  => & cases(angle.l phi.alt_(a_1) ... phi.alt_(a_l) angle.r = 0 "for" l "odd", angle.l phi.alt_(a_1) ... phi.alt_(a_(2 l)) angle.r = angle.l phi.alt_(a_1) phi.alt_(a_2) angle.r ... angle.l phi.alt_(a_(2 l - 1)) phi.alt_(a_(2 l)) angle.r + "symmetrised") \
  => & angle.l phi.alt_(bold(q)_1)^+ phi.alt_(bold(q)_2)^+ phi.alt_(bold(q)_3)^+ phi.alt_(bold(q)_4)^+ angle.r_+ = angle.l phi.alt_(bold(q)_1)^+ phi.alt_(bold(q)_2)^+ angle.r_+ angle.l phi.alt_(bold(q)_3)^+ phi.alt_(bold(q)_4)^+ angle.r_+ + angle.l phi.alt_(bold(q)_1)^+ phi.alt_(bold(q)_3)^+ angle.r_+ angle.l phi.alt_(bold(q)_2)^+ phi.alt_(bold(q)_4)^+ angle.r_+ + angle.l phi.alt_(bold(q)_1)^+ phi.alt_(bold(q)_4)^+ angle.r_+ angle.l phi.alt_(bold(q)_2)^+ phi.alt_(bold(q)_3)^+ angle.r_+
$

$
  & integral product_(j = 1)^4 dif^d q_j angle.l phi.alt_(bold(q)_1)^+ phi.alt_(bold(q)_2)^+ angle.r_+ angle.l phi.alt_(bold(q)_3)^+ phi.alt_(bold(q)_4)^+ angle.r_+ delta^d (
    bold(k)_1 + bold(k)_2 + bold(q)_1 + bold(q)_2
  ) delta^d (bold(k)_3 + bold(k)_4 + bold(q)_3 + bold(q)_4) \
  tilde & integral dif^d q_2 dif^d q_4 G_0(q_2) G_0(q_4) delta^d (bold(k)_1 + bold(k)_2) delta^d (
    bold(k)_3 + bold(k)_4
  ) \
  & integral product_(j = 1)^4 dif^d q_j angle.l phi.alt_(bold(q)_1)^+ phi.alt_(bold(q)_3)^+ angle.r_+ angle.l phi.alt_(bold(q)_2)^+ phi.alt_(bold(q)_4)^+ angle.r_+ delta^d (
    bold(k)_1 + bold(k)_2 + bold(q)_1 + bold(q)_2
  ) delta^d (bold(k)_3 + bold(k)_4 + bold(q)_3 + bold(q)_4) \
  tilde & integral dif^d q_1 dif^d q_2 G_0(q_1) G_0(q_2) delta^d (
    bold(k)_1 + bold(k)_2 + bold(q)_1 + bold(q)_2
  ) delta^d (bold(k)_3 + bold(k)_4 + bold(q)_3 + bold(q)_4) \
  tilde & integral dif^d q G_0(q_0) G_0(|bold(k)_1 + bold(k)_2 + bold(q)|^2) delta^d (
    bold(k)_1 + bold(k)_2 + bold(k)_3 + bold(k)_4
  )
$

$
  1 / 2 angle.l F_I^2 angle.r_+ tilde & binom(4, 2)^2 g_0^2 integral_0^(Lambda \/ zeta) product_(i = 1)^4 [
    (dif^d k_i) / (2 pi)^d phi.alt_(bold(k)_i)^-
  ] f(bold(k)_1 + bold(k)_2) (2 pi)^d delta^d (sum_i bold(k)_i), \
  & f(bold(k)_1 + bold(k)_2) = integral_(Lambda \/ zeta)^(Lambda) (dif^d q) / (2 pi)^d 1 / (q^2 + mu_0^2) 1 / ((
    bold(k)_1 + bold(k)_2 + bold(q)
  )^2 + mu_0^2) = integral_(Lambda \/ zeta)^(Lambda) (dif^d q) / (2 pi)^d 1 / (q^2 + mu_0^2)^2 (
    1 + cal(O)(bold(k)_1, bold(k)_2)
  )
$

$ g_0 ->g_0' = g_0 - 36 g_0^2 integral_(Lambda \/ zeta)^(Lambda) (dif^d q) / (2 pi)^d 1 / (q^2 + mu_0^2)^2 $

=== Feynman Diagrams

=== Beta Functions

$ Lambda' = Lambda / zeta = Lambda exp(-s) $

$ beta_n (g_n) = (dif g_n) / (dif s) $

$ g_n(s) = exp((d - n d \/ 2 + n) s) g_(0, n) => (dif g_n) / (dif s) (d - 1 / 2 n d + n) g_n $

$
  mu^2(zeta) = z^2 (mu_0^2 + a g_0), a = 12 integral_(Lambda \/ zeta)^Lambda (dif^d q) / (
    2 pi
  )^d 1 / (q^2 + mu_0^2), quad g(zeta) = zeta^(4 - d) (
    g_0 - b g_0^2
  ), b = 36 integral_(Lambda \/ zeta)^Lambda (dif^d q) / (2 pi)^d 1 / (q^2 + mu_0^2)^2
$

$
  => (dif mu^2) / (dif s) = 2 mu^2 + (3 g) / (2 pi^2) Lambda^4 / (Lambda^2 + mu^2), quad (dif g) / (dif s) = - 9 / (2 pi^2) Lambda^4 / (
    Lambda^2 + mu^2
  )^2 g^2
$

=== Again, the Analogy with Quantum Field Theory

== The Epsilon Expansion

$ d = 4 - epsilon $

$ tilde(g) = Lambda^(- epsilon) g, Omega_(d - 1) = 2 pi^(d \/ 2) \/ Gamma(d \/ 2) $

$
  (dif mu^2) / (dif s) = & 2 mu^2 + (12 Omega_(d - 1)) / (
    2 pi
  )^d Lambda^4 / (Lambda^2 + mu^2) tilde(g) + ... approx 2 mu^2 + 3 / (2 pi^2) Lambda^4 / (Lambda^2 + mu^2) tilde(g) \
  (dif tilde(g)) / (dif s) = & epsilon tilde(g) - (36 Omega_(d - 1)) / (2 pi)^d Lambda^4 / (
    Lambda^2 + mu^2
  )^2 tilde(g)^2 + ... approx epsilon tilde(g) - 9 / (2 pi^2) Lambda^4 / (Lambda^2 + mu^2)^2 tilde(g)^2
$

- Gaussian fixed point: $ mu^2 = tilde(g) = 0 $
- Wilson-Fisher fixed point: $ & mu^2_star = - 3 / (4 pi^2) Lambda^4 / (Lambda^2 + mu^2_star) tilde(g)_star, quad & tilde(g)_star = & (2 pi^2) / 9 (Lambda^2 + mu^2_star)^2 / Lambda^4 epsilon\
=> & mu^2_star = - 3 / (4 pi^2) Lambda^2 tilde(g)_star = - 1 / 6 Lambda^2 epsilon, quad & tilde(g)_star = & (2 pi^2) / 9 epsilon $

=== The Wilson-Fisher Fixed Point

$
  cases(mu^2 = & mu^2_star + delta mu^2, tilde(g) = & tilde(g)_star + delta tilde(g)) => dif / (dif s) mat(delta mu^2; delta tilde(g)) = mat(2 - epsilon \/ 3, 3 / (2 pi^2) Lambda^2 (1 + epsilon / 6); 0, - epsilon) mat(delta mu^2; delta tilde(g)) => cases(Delta_t = 2 - epsilon \/ 3 + cal(O)(epsilon^2), Delta_g = - epsilon + cal(O)(epsilon^2))
$

$ t = |T - T_c| \/ T_c => t -> zeta^(Delta_t) t = exp(s Delta_t) t => nu, alpha, beta, gamma, delta $

=== What Happens in $d = 2$?

$ Delta_phi.alt = [phi.alt] = 0 $

=== A History of Renormalisation

== Looking Forwards: Conformal Symmetry

= Continuous Symmetry

== The Importance of Symmetry

- The symmetry enjoyed by the free energy of the system
- The symmetry of the ground state

== $O(N)$ Models

$ bold(phi.alt)(bold(x)) = (phi.alt_1(bold(x)), ..., phi.alt_N (bold(x))) $

$ phi.alt_a (bold(x)) -> R_a^(#hide[$a$] b) phi.alt_b (bold(x)), quad R in O(N) => R^T R = 1 $

$
  F[bold(phi.alt)(bold(x))] = integral dif^d x [
    gamma / 2 nabla bold(phi.alt) dot.c nabla bold(phi.alt) + mu^2 / 2 bold(phi.alt) dot.c bold(phi.alt) + g (
      bold(phi.alt) dot.c bold(phi.alt)
    )^2 + ...
  ]
$

- $O(2)$: The XY-Model $ psi(bold(x)) = phi.alt_1(bold(x)) + upright(i) phi.alt_2(bold(x)), quad psi -> exp(upright(i) alpha) psi $ $
    F[psi(bold(x))] = integral dif^d r [gamma / 2 nabla psi^star dot.c nabla psi + mu^2 / 2 |psi|^2 + g |psi|^4 + ...]
  $
- $O(3)$: The Heisenberg Model

=== Goldstone Bosons

$ angle.l |bold(phi.alt)| angle.r = M_0 = sqrt(- mu^2 / (4 g)) $

- The Symmetry Behind Goldstone Bosons $ G = O(N), H = O(N - 1) => SS^(N - 1) = (O(N)) / (O(N - 1)) $ $
    \# "Goldstone Bosons" = dim G - dim H
  $
- An Example: the XY-Model $ psi(bold(x)) = M(bold(x)) exp(upright(i) theta(bold(x))), M(bold(x)) = M_0 + tilde(M)(bold(x)), M_0 = sqrt(- mu^2 \/ 4 g) $ $
    F[M, theta] = integral dif^d x & gamma / 2 (nabla tilde(M))^2 + |mu^2| tilde(M)^2 + g tilde(M)^4 + ... \
    + & gamma / 2 M_0^2 (nabla theta)^2 + gamma M_0 tilde(M) (nabla theta)^2 + ...
  $
- Another Example: The Heisenberg Model $ bold(phi.alt) = M (sin theta cos phi.alt, sin theta sin phi.alt, cos theta) $ $
    F[M, theta, phi.alt] = integral dif^d x & gamma / 2 (nabla tilde(M))^2 + |mu^2| tilde(M)^2 + g tilde(M)^4 + ... \
    + & gamma / 2 M_0^2 [(nabla theta)^2 + sin^2 theta (nabla phi.alt)^2] + ...
  $
- Correlation Functions $ F[theta] = integral dif^d x gamma / 2 M_0^2 (nabla theta)^2 + ... $ $
    angle.l theta(bold(x)) theta(bold(y)) angle.r = 1 / (gamma M_0^2) integral (dif^d k) / (
      2 pi
    )^d exp(upright(i) bold(k) dot.c (bold(x) - bold(y))) / k^2
  $

=== The $d = 4 - epsilon$ Expansion

$
  beta F[phi.alt] = integral dif^d x [
    1 / 2 nabla phi.alt_a dot.c nabla phi.alt_a + 1 / 2 mu_0^2 phi.alt_a phi.alt_a + g_0 (phi.alt_a phi.alt_a)^2 + ...
  ]
$

$ [phi.alt_a] = Delta_phi.alt = (d - 2) / 2, quad [mu_0^2] = 2, quad [g_0] = 4 - d $

Gaussian fixed point $ mu_0^2 = g_0 = 0 $

Interaction vertex: $tilde g_0 -> tilde g_0 delta_(a b) delta_(c d)$

- Order $g_0$
- Order $g_0^2$
- The Epsilon Expansion

=== There Are No Goldstone Bosons in $d = 2$

- An Example: the XY model

Mermin-Wagner theorem

== Sigma Models

$ bold(phi.alt) -> M_0 bold(n) => bold(phi.alt) dot.c bold(phi.alt) = M_0^2 -> bold(n) dot.c bold(n) = 1 $

$ F[bold(n)] = integral dif^d x 1 / (2 e^2) nabla bold(n) dot.c nabla bold(n), quad e^2 = 1 \/ gamma M_0^2 $

$
  Z = integral cal(D) bold(n) delta(bold(n)(bold(x))^2 - 1) exp(- 1 / (2 e^2) integral dif^d x nabla bold(n) dot.c nabla bold(n))
$

$
  bold(n)(bold(x)) = & (arrow(pi)(bold(x)), sigma(bold(x))), sigma(bold(x))^2 = 1 - arrow(pi)(bold(x)) dot.c arrow(pi)(
    bold(x)
  ) \
  F[arrow(pi)] = & integral dif^d x 1 / (2 e^2) [
    nabla arrow(pi) dot.c nabla arrow(pi) + nabla sigma nabla sigma
  ] = integral dif^d x 1 / (2 e^2) [
    nabla arrow(pi) dot.c nabla arrow(pi) + (arrow(pi) dot.c nabla arrow(pi))^2 / (1 - arrow(pi)^2)
  ] \
$

=== The Background Field Method

- background field $ n^a (bold(x)) = tilde(n)^a (bold(x)) $
- frame field $ e^a_alpha (bold(x)), a = 1, ..., N, alpha = 1, ... N - 1, quad tilde(n)^a (bold(x)) e^a_alpha (bold(x)) = 0, quad e^a_alpha (bold(x)) e^a_beta (bold(x)) = delta_(alpha beta) $
- short wavelength mode $ n^a (bold(x)) = tilde(n)^a (bold(x)) (1 - chi(bold(x))^2)^(1 / 2) + sum_(alpha = 1)^(N - 1) chi_alpha (bold(x)) e^a_alpha (bold(x)) $

Integrating out Short Wavelengths:

$
  nabla n^a = & nabla tilde(n)^a (1 - chi^2)(1 / 2) + tilde(n)^a nabla (1 - chi^2)(1 / 2) + nabla (
    chi_alpha e^a_alpha
  ) \
  = & nabla tilde(n)^a (1 - 1 / 2 chi^2) - tilde(n)^a nabla chi_alpha nabla chi_alpha + nabla (
    chi_alpha e^a_alpha
  ) + cal(O)(chi^2) \
  => (nabla n^a)^2 = & (nabla tilde(n)^a (1 - chi^2)^(1 / 2))^2 + (nabla(chi_alpha e^a_alpha))^2 + 2 nabla tilde(n)^a (
    1 - 1 / 2 chi^2
  ) nabla(chi_alpha e^a_alpha) + cal(O)(z^3) \
  = & (nabla tilde(n)^a)^2 (1 - chi^2) + (nabla chi_alpha)^2 + chi_alpha chi_beta nabla e^a_alpha nabla e^a_beta + 2 (
    nabla chi_alpha
  ) chi_beta e^a_alpha nabla e^a_beta + 2 nabla tilde(n)^a nabla(chi_alpha e^a_alpha) + cal(O)(z^3)
$

$
  Z = & integral cal(D) tilde(n) delta(tilde(n)^2 - 1) exp(- 1 / (2 e^2) integral dif^d x (nabla tilde(n))^2) integral cal(D) chi exp(- 1 / (2 e^2) integral dif^d x (nabla chi)^2) exp(- F_I [tilde(n), chi]) \
  = & integral cal(D) tilde(n) delta(tilde(n)^2 - 1) exp(- 1 / (2 e^2) integral dif^d x (nabla tilde(n))^2) angle.l exp(- F_I [tilde(n), chi]) angle.r \
  F_I [tilde(n)^a, chi_alpha] = & 1 / (2 e^2) integral dif^d x [
    - chi^2 (nabla tilde(n)^a)^2 + chi_alpha chi_beta nabla e^a_alpha e^a_beta + 2 (
      nabla chi_alpha
    ) chi_beta e^a_alpha e^a_beta + 2 nabla tilde(n)^a nabla (chi_alpha e^a_alpha)
  ]
$

$
  angle.l exp(- F_I [tilde(n), chi]) angle.r = & 1 - angle.l F_I angle.r + 1 / 2 angle.l F_I^2 angle.r + ... \
  angle.l F_I angle.r = & 1 / (2 e^2) integral dif^d x (
    - delta_(alpha beta) (nabla tilde(n)^a)^2 + nabla e^a_alpha nabla e^a_beta
  ) angle.l chi_alpha (bold(x)) chi_beta (bold(x)) angle.r \
  angle.l chi_alpha (bold(x)) chi_beta (
    bold(x)
  ) angle.r = & e^2 delta_(alpha beta) I_d, quad I_d = integral_(Lambda \/ zeta)^Lambda (dif^d q) / (
    2 pi
  )^d 1 / q^2 = e^2 delta_(alpha beta) dot.c Omega_(d - 1) / (
    2 pi
  )^d Lambda^(d - 2) times cases(zeta - 1 quad & d = 1, log zeta quad & d = 2, 1 - zeta^(2 - d) quad & d >= 3) \
  nabla e^a_alpha nabla e^a_beta delta_(alpha beta) = & nabla e^a_alpha nabla e^a_alpha \
  = & nabla e^a_alpha nabla e^b_alpha (
    tilde(n)^a tilde(n)^b + e^a_beta e^b_beta
  ), quad tilde(n)^a tilde(n)^b + e^a_beta e^b_beta = delta^(a b) \
  = & e^a_alpha e^b_alpha (nabla tilde(n)^a) (nabla tilde(n)^b) + (e^a_beta nabla e^a_alpha) (
    e^b_beta nabla e^b_alpha
  ) \
  = & nabla tilde(n)^a nabla tilde(n)^a + (e^a_beta nabla e^a_alpha) (e^b_beta nabla e^b_alpha) \
  => angle.l F_I angle.r = & (2 - N) I_d integral dif^d x 1 / 2 (nabla tilde(n)^a)^2 \
  => F[
    tilde(bold(n))
  ] = & integral dif^d x 1 / (2 e'^2) nabla tilde(bold(n)) dot.c nabla tilde(bold(n)), 1 / e'^2 = 1 / e_0^2 + (
    2 - N
  ) I_d \
  => 1 / e^2(zeta) = & zeta^(d - 2) (1 / e_0^2 + (2 - N) I_d)
$

=== Asymptotic Freedom and the $d = 2 + epsilon$ Expansion

$ Lambda' = Lambda / zeta = Lambda exp(- s) $

$
  d = 2, & quad beta(g) := (dif e) / (dif s) = (N - 2) e^3 / (4 pi) \
  d = 2 + epsilon, & quad (dif e) / (dif s) = - epsilon / 2 e + (
    N - 2
  ) e^3 / (4 pi) Lambda^epsilon => e_star^2 = (2 pi epsilon) / (N - 2) Lambda^(- epsilon)
$

=== Large $N$

$
  Z = & integral cal(D) n delta(bold(n)^2 - 1) exp(- 1 / (2 e_0^2) integral dif^d x nabla bold(n) dot.c nabla bold(n)) \
  = & integral cal(D) n cal(D) sigma exp(- 1 / (2 e_0^2) integral dif^d x nabla bold(n) dot.c nabla bold(n) - upright(i) / (2 e_0^2) integral dif^d x sigma (bold(n) dot.c bold(n) - 1)) \
  = & integral cal(D) sigma det^(- N \/ 2) (
    - nabla^2 + upright(i) sigma(bold(x))
  ) exp(upright(i) / (2 e_0^2) integral dif^d x sigma) \
  = & integral cal(D) sigma exp(- N / 2 tr log (- nabla^2 + upright(i) sigma) + upright(i) / (2 e_0^2) integral dif^d x sigma), quad log det = tr log
$

Saddle point $ delta tr log X = tr X^(-1) delta X => N / 2 G(bold(x), bold(x)') = 1 / (2 e_0^2), quad (- nabla^2 + upright(i) sigma(bold(x)))G(bold(x), bold(x)') = delta(bold(x) - bold(x)') $

$ sigma(bold(x)) = - upright(i) mu^2 => integral^Lambda (dif^d k) / (2 pi)^d 1 / (k^2 + mu^2) = 1 / (e_0^2 N) $

Large $N$ in $d = 2$

$ d = 2 => 1 / (4 pi) log ((Lambda^2 + mu^2) / mu^2) = 1 / (e_0^2 N) $

$ e_0^2 N << 1 => mu approx Lambda exp(- (2 pi) / (e_0^2 N)) $

Large $N$ in $d > 2$

$
  1 / (e_0^2 N) = integral^Lambda (dif^d k) / (
    2 pi
  )^d 1 / (k^2 + mu^2) tilde cases(Lambda^(d - 2) - mu^2 Lambda^(d - 4) quad & d >= 4, Lambda^(d - 2) - mu^(d - 2) quad & 2 < d < 4)
$

== The Kosterlitz-Thouless Transition

- High temperature phase: $ angle.l psi^dagger(bold(x)) psi(0) angle.r = exp(- r \/ xi) / sqrt(r), quad xi tilde 1 \/ mu^2 $
- Low temperature phase: $ mu^2 < 0, quad psi = M exp(upright(i) theta) => F[theta] = 1 / (2 e^2) integral dif^2 x (nabla theta)^2, quad e^2 << 1 $ $
    angle.l theta(bold(x)) theta(0) angle.r = - e^2 / (2 pi) log(Lambda r)
  $ $
    => angle.l exp(- upright(i) theta(bold(x))) exp(upright(i) theta(0)) angle.r = angle.l exp(- upright(i) (theta(bold(x)) - theta(0))) angle.r = exp(- angle.l (theta(bold(x)) - theta(0))^2 angle.r \/ 2) tilde 1 / r^eta, quad eta = e^2 / (2 pi)
  $

=== Vortices

Vortex & anti-vortex

$ bold(X) $

$ integral.cont nabla theta dot.c dif bold(x) = 2 pi n, quad n in ZZ $

$
  nabla theta = n / r^2 (y, -x) => F_"vortex" = 1 / (2 e^2) integral dif^2 x (
    nabla theta
  )^2 = 1 / (2 e^2) integral_a^L 2 pi r dif r n^2 / r^2 + 1 / (2 e^2) integral_0^a dif^2 x (
    nabla theta
  )^2 = (pi n^2) / e^2 log(L / a) + F_"core"
$

$
  n = plus.minus 1 => p("vortex") = (L / a)^2 exp(- F_"vortex") / Z = exp(- F_"core") / Z (
    L / a
  )^(2 - pi \/ e^2) => e^2_"KT" = pi / 2
$

A Coulomb Gas of Vortices

$
  bold(v) = nabla theta => nabla times bold(v) = 2 pi hat(bold(z)) sum_i n_i delta^2(
    bold(x) - bold(X)_i
  ) eq.not 0, quad n_i = plus.minus 1
$

$ nabla^2 theta = 0 => nabla dot.c bold(v) = 0 $

$
  E_i = epsilon_(i j) v_j => mat(E_1; E_2) = mat(v_2; - v_1) => nabla times bold(E) = 0, nabla dot.c bold(E) = 2 pi sum_i n_i delta^2(
    bold(x) - bold(X)_i
  )
$

$ bold(E) = - nabla chi => chi(bold(x)) = - sum_i n_i log((bold(x) - bold(X)_i) / a) $

$
  F = & integral dif^2 x 1 / (2 e^2) bold(E) dot.c bold(E) = integral dif^2 x 1 / (2 e^2) (nabla chi)^2 \
  = & - integral dif^2 x 1 / (2 e^2) chi nabla dot.c bold(E) \
  = & pi / e^2 sum_(i eq.not j) n_i n_j log((|bold(X)_i - bold(X)_j|) / a) + sum_i n_i^2 F_"core"
$

$
  bold(v) = bold(v)_"spin wave" + bold(v)_"vortex", quad nabla times bold(v)_"spin wave" = 0, nabla dot.c bold(v)_"vortex" = 0
$

$
  Z = & Z_"spin wave" Z_"vortex" \
  = & 1 + sum_(p = 1)^infinity y^(2 p) / (
    p!
  )^2 product_(i = 1)^p integral dif^2 bold(X)_i^+ dif^2 bold(X)_i^- exp(pi / e^2 sum_(i eq.not j) n_i n_j log((|bold(X)_i - bold(X)_j|) / a))
$

=== From Coulomb Gas to Sine-Gordon

Sine-Gordon model $ F = integral dif^d x 1 / 2 (nabla phi.alt)^2 - lambda cos (beta phi.alt) $

$ V_alpha = -1, 0, +1 "on" bold(X)_alpha $

$
  arrow.b.double integral cal(D) phi.alt exp(- integral dif^d x 1 / 2 (nabla phi.alt)^2 + f(bold(x)) phi.alt(bold(x))) tilde exp(- 1 / (4 pi) integral dif^2 x dif^2 y f(bold(x)) log |bold(x) - bold(y)| f(bold(y)))
$

$
  Z_"vortex" tilde & sum_({
    V_alpha
  }) exp(pi / e^2 sum_(alpha eq.not beta) V_alpha V_beta log ((|bold(X)_alpha - bold(X)_beta|) / a) - sum_alpha V_alpha^2 F_"core"), sum_alpha V_alpha = 0 \
  tilde & sum_({
    V_alpha
  }) exp(- integral dif^2 x 1 / 2 (nabla phi.alt)^2 + sum_alpha (2 pi upright(i)) / e V_alpha phi.alt_alpha - V_alpha^2 F_"core") \
  = & integral cal(D) phi.alt exp(- 1 / 2 integral dif^2 x (nabla phi.alt)^2) product_alpha sum_(V_alpha = -1, 0, +1) exp((2 pi upright(i)) / e V_alpha phi.alt_alpha - V_alpha^2 F_"core") \
  = & integral cal(D) phi.alt exp(- 1 / 2 integral dif^2 x (nabla phi.alt)^2) product_alpha [
    1 + 2 exp(- F_"core") cos(2 pi phi.alt_alpha \/ e)
  ] \
  approx & integral cal(D) phi.alt exp(- 1 / 2 integral dif^2 x (nabla phi.alt)^2 + 2 / a^2 exp(- F_"core") integral dif^2 x cos((2 pi phi.alt) / e)) \
  => & lambda = (2 exp(- F_"core")) / a^2, quad beta = (2 pi) / e
$

=== RG Flows in Sine-Gordon

$ F = integral dif^2 x 1 / 2 (nabla phi.alt)^2 - lambda_0 cos(beta_0 phi.alt) $

$ phi.alt_bold(k) = phi.alt_bold(k)^- + phi.alt_bold(k)^+ $

$
  & F'[phi.alt^-] = F_0[phi.alt^-] - log angle.l exp(- F_I [phi.alt^- + phi.alt^+]) angle.r_+, \
  & F_0[phi.alt] = integral dif^2 x 1 / 2 (nabla phi.alt)^2, F_I [
    phi.alt
  ] = - lambda_0 integral dif^2 x cos(beta_0 phi.alt), \
  & angle.l exp(- F_I [phi.alt^- + phi.alt^+]) angle.r_+ = integral cal(D) phi.alt^+ exp(- F_0 [phi.alt^+]) exp(- F_I [phi.alt^- + phi.alt^+])
$

First Order in $lambda_0$

$
  angle.l exp(lambda_0 integral dif^2 x cos(beta (phi.alt^- + phi.alt^+))) angle.r_+ approx & 1 + lambda_0 integral dif^2 x angle.l cos(beta (phi.alt^- + phi.alt^+)) angle.r_+ \
  = & 1 + lambda_0 / 2 integral dif^2 x sum_(sigma = plus.minus 1) exp(upright(i) beta sigma phi.alt^-) angle.l exp(upright(i) beta sigma phi.alt^+) angle.r_+ \
  = & 1 + lambda_0 / 2 integral dif^2 x sum_(sigma = plus.minus 1) exp(upright(i) beta sigma phi.alt^-) exp(- beta^2 / 2 angle.l phi.alt^+(bold(x)) phi.alt^+(bold(x)) angle.r_+)
$

$
  angle.l phi.alt^+(0) phi.alt^+(0) angle.r_+ = integral_(Lambda \/ zeta)^Lambda (dif^2 k) / (
    2 pi
  )^2 1 / k^2 = 1 / (2 pi) log zeta => F'[phi.alt^-] = integral dif^2 x 1 / 2 (
    nabla phi.alt^-
  )^2 - lambda_0 zeta^(- beta^2 \/ 4 pi) cos(beta phi.alt^-)
$

$
  bold(x) -> bold(x)' = bold(x) \/ zeta => F'[phi.alt] = integral dif^2 x 1 / 2 (
    nabla phi.alt
  )^2 - lambda(zeta) cos(beta phi.alt), lambda(zeta) = lambda_0 zeta^(2 - beta^2 \/ 4 pi)
$

$
  beta_"KT"^2 = 8 pi => e_"KT"^2 = pi / 2 => angle.l exp(- upright(i) theta(bold(x))) exp(upright(i) theta(0)) angle.r tilde 1 / r^(1 \/ 4)
$

Second Order in $lambda_0$

$
  angle.l cos(beta (phi.alt^-(bold(x)) + phi.alt^+(bold(x)))) cos(beta (phi.alt^-(bold(y)) + phi.alt^+(bold(y)))) angle.r = 1 / 4 sum_(sigma = plus.minus 1) ...
$

$
  G(bold(x) - bold(y); zeta) = angle.l phi.alt^+(bold(x)) phi.alt^+(
    bold(y)
  ) angle.r = integral_(Lambda \/ zeta)^Lambda (dif^2 k) / (
    2 pi
  )^2 exp(upright(i) bold(k) dot.c (bold(x) - bold(y))) / k^2, quad G(0; zeta) = 1 / (2 pi) log zeta
$


$
  => F'[phi.alt^-] = ... = 1 / 4 lambda_0^2 zeta^(- beta^2 \/ 2 pi) integral dif^2 x dif^2 y {
    & cos(beta (phi.alt^-(bold(x)) + phi.alt^-(bold(x)))) [exp(- beta^2 G(bold(x) - bold(y))) - 1] \
    + & cos(beta (phi.alt^-(bold(y)) - phi.alt^+(bold(y)))) [exp(+ beta^2 G(bold(x) - bold(y))) - 1]
  }
$

$
  bold(y) = bold(x) + bold(v) => cos(beta (phi.alt^-(bold(x)) + phi.alt^-(bold(y)))) approx cos(2 beta phi.alt^-(bold(x))), cos(beta (phi.alt^-(bold(x)) - phi.alt^-(bold(y)))) approx 1 - (beta^2 v^2) / 2 (
    nabla phi.alt^-
  )^2
$

$
  F'[phi.alt^-] = 1 / 2 lambda_0^2 integral dif d^2 x {
    A_1(zeta) cos(2 beta phi.alt) + A_2(zeta) (nabla phi.alt)^2
  } + "const.", quad A_1(zeta) = ..., A_2(zeta) = ...
$

$
  bold(x) -> bold(x)' = bold(x) \/ zeta, phi.alt'(
    bold(x)'
  ) = sqrt(1 + lambda_0^2 A_2(zeta)) phi.alt(bold(x)) => beta(zeta) = beta_0 (
    1 + lambda_0^2 A_2(zeta)
  )^(- 1 \/ 2) approx beta_0 (1 - 1 / 2 lambda_0^2 A_2(zeta))
$

Beta Functions

$ (dif lambda) / (dif s) = (2 - beta^2 / (4 pi)) lambda = (2 - pi / e^2) lambda $

$
  (dif beta) / (dif s) = - C(beta) beta^3 lambda^2, C(
    beta
  ) > 0 => (dif e^2) / (dif s) = 8 pi^2 C lambda^2, e^2 = 4 pi^2 \/ beta^2
$
