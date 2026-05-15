<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%@taglib
prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700&family=Space+Grotesk:wght@500;700&display=swap"
      rel="stylesheet"
    />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp"
      crossorigin="anonymous"
    />
    <style>
      :root {
        --bg-main: #f4f8ff;
        --bg-card: #ffffff;
        --ink-main: #1c2736;
        --ink-soft: #5b6678;
        --brand: #0d6e70;
        --brand-dark: #0a5557;
        --accent: #f2a25c;
        --line: #d8e0ef;
      }

      body {
        font-family: "DM Sans", sans-serif;
        color: var(--ink-main);
        background:
          radial-gradient(
            circle at 12% 18%,
            rgba(13, 110, 112, 0.15),
            transparent 36%
          ),
          radial-gradient(
            circle at 88% 12%,
            rgba(242, 162, 92, 0.18),
            transparent 34%
          ),
          linear-gradient(180deg, #eef3fb 0%, var(--bg-main) 56%, #f8fbff 100%);
        min-height: 100vh;
      }

      h1,
      h2,
      h3,
      h4,
      .navbar-brand {
        font-family: "Space Grotesk", sans-serif;
        letter-spacing: 0.2px;
      }

      .surface-card {
        background: var(--bg-card);
        border: 1px solid rgba(216, 224, 239, 0.75);
        border-radius: 20px;
        box-shadow: 0 14px 32px rgba(16, 42, 67, 0.08);
      }

      .metric-chip {
        border: 1px solid var(--line);
        border-radius: 14px;
        padding: 0.8rem 1rem;
        background: linear-gradient(
          180deg,
          rgba(255, 255, 255, 0.95),
          rgba(243, 249, 255, 0.95)
        );
      }

      .text-soft {
        color: var(--ink-soft);
      }
    </style>
    <title>Sistema de Empleados</title>
  </head>
  <body></body>
</html>
