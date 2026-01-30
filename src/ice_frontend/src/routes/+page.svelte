<script>
  import "../index.scss";
  
  let btcAddress = "bc1pd5208wzhhl6e5ftuk68hyap4qzlzgpy3kfwhmlyazqhs2d59emnseawztd";
  let copied = false;
  let copyTimeout;

  function copyToClipboard() {
    navigator.clipboard.writeText(btcAddress).then(() => {
      copied = true;
      clearTimeout(copyTimeout);
      copyTimeout = setTimeout(() => {
        copied = false;
      }, 2000);
    });
  }
</script>

<div class="site-wrapper">
  <!-- Government Banner -->
  <div class="gov-banner">
    <div class="container">
      <span class="flag-icon">🌐</span>
      <span>Global Immigration and Customs Enforcement</span>
    </div>
  </div>

  <!-- Header -->
  <header class="site-header">
    <div class="container header-content">
      <div class="logo-section">
        <div class="logo-placeholder">
          <!-- Logo goes here -->
           <img src="logo.png" class="logo-box" alt="logo" />
        </div>
        <div class="site-title">
          <h1>Global Immigration</h1>
          <h2>and Customs Enforcement</h2>
        </div>
      </div>

      <div class="header-right">
        <div class="utility-links">
          <a href="#" class="utility-link">🔗 Quick Links</a>
        </div>
        
        <div class="search-bar">
          <input type="search" placeholder="Search" />
          <button class="search-button">🔍</button>
        </div>

        <div class="report-section">
          <span class="report-text">Visit <a href="https://nns.ic0.app/">https://nns.ic0.app/</a> to help us govern.</span>
          <button class="report-button">Report Crime</button>
        </div>
      </div>
    </div>
  </header>

  <!-- Navigation -->
  <nav class="main-nav">
    <div class="container">
      <a href="#" class="nav-link">About Us</a>
      <a href="#" class="nav-link">Operations</a>
      <a href="#" class="nav-link">Investigations</a>
      <a href="#" class="nav-link">Newsroom</a>
    </div>
  </nav>

  <!-- Hero Section -->
  <section class="hero">
    <div class="container hero-content">
      <div class="hero-card">
        <h3>Join Now</h3>
        <p>Partner with us by staking $ICE, raising proposals to keep communities safer through our programs.</p>
        <button class="cta-button">Read more</button>
      </div>
      <div class="hero-image">
      </div>
    </div>
  </section>

  <!-- Main Content Area -->
  <main class="main-content">
    <div class="container">
      <!-- Bitcoin Address Section -->
      <div class="btc-address-section">
        <label class="btc-label">DAO Controlled Bitcoin Wallet Address</label>
        <button 
          class="btc-address" 
          on:click={copyToClipboard}
          title="Click to copy address"
        >
          <span class="btc-text">{btcAddress}</span>
          <span class="copy-icon">📋</span>
        </button>
        {#if copied}
          <span class="copy-feedback">✓ Copied to clipboard!</span>
        {/if}
      </div>
      
      <slot />
    </div>
  </main>

  <!-- News Section -->
  <section class="news-section">
    <div class="container">
      <h2>Latest News</h2>
    </div>
  </section>
</div>

<style>
  :global(body) {
    margin: 0;
    padding: 0;
    font-family: 'Source Sans Pro', 'Helvetica Neue', Arial, sans-serif;
  }

  .site-wrapper {
    min-height: 100vh;
    display: flex;
    flex-direction: column;
  }

  .container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 20px;
  }

  /* Government Banner */
  .gov-banner {
    background: #f0f0f0;
    padding: 8px 0;
    font-size: 14px;
    border-bottom: 1px solid #ddd;
  }

  .gov-banner .container {
    display: flex;
    align-items: center;
    gap: 10px;
  }

  .gov-banner .flag-icon {
    font-size: 16px;
  }

  /* Header */
  .site-header {
    background: white;
    padding: 20px 0;
    border-bottom: 1px solid #e5e5e5;
  }

  .site-header .header-content {
    display: flex;
    justify-content: space-between;
    align-items: center;
    flex-wrap: wrap;
    gap: 20px;
  }

  .site-header .logo-section {
    display: flex;
    align-items: center;
    gap: 20px;
  }

  .site-header .logo-box {
    width: 80px;
    height: 80px;
    object-fit: contain;
  }

  .site-header .site-title h1 {
    margin: 0;
    font-size: 32px;
    color: #005ea2;
    font-weight: 600;
    line-height: 1.1;
  }

  .site-header .site-title h2 {
    margin: 0;
    font-size: 28px;
    color: #005ea2;
    font-weight: 400;
    line-height: 1.1;
  }

  .site-header .header-right {
    display: flex;
    flex-direction: column;
    gap: 12px;
    align-items: flex-end;
  }

  .site-header .utility-links {
    display: flex;
    gap: 15px;
    font-size: 14px;
  }

  .site-header .utility-link {
    color: #1a1a1a;
    text-decoration: none;
  }

  .site-header .utility-link:hover {
    text-decoration: underline;
  }

  .site-header .search-bar {
    display: flex;
    gap: 0;
  }

  .site-header .search-bar input {
    padding: 8px 12px;
    border: 1px solid #ccc;
    border-right: none;
    width: 250px;
    font-size: 14px;
  }

  .site-header .search-button {
    padding: 8px 16px;
    background: #005ea2;
    color: white;
    border: 1px solid #005ea2;
    cursor: pointer;
  }

  .site-header .report-section {
    display: flex;
    align-items: center;
    gap: 15px;
    font-size: 14px;
  }

  .site-header .report-section a {
    color: #005ea2;
    font-weight: 600;
  }

  .site-header .report-button {
    padding: 10px 24px;
    background: #c9252d;
    color: white;
    border: none;
    font-weight: 600;
    cursor: pointer;
    font-size: 16px;
  }

  .site-header .report-button:hover {
    background: #a01f25;
  }

  /* Navigation */
  .main-nav {
    background: #1a1a1a;
    padding: 0;
  }

  .main-nav .container {
    display: flex;
    gap: 0;
  }

  .main-nav .nav-link {
    color: white;
    text-decoration: none;
    padding: 18px 30px;
    display: block;
    font-size: 16px;
    font-weight: 500;
    border-right: 1px solid #333;
  }

  .main-nav .nav-link:hover {
    background: #333;
  }

  /* Hero Section */
  .hero {
    background: linear-gradient(135deg, #1e3a8a 0%, #7c2d12 100%);
    padding: 60px 0;
    position: relative;
  }

  .hero .hero-content {
    display: flex;
    justify-content: space-between;
    align-items: center;
    gap: 40px;
  }

  .hero .hero-card {
    background: rgba(255, 255, 255, 0.95);
    padding: 40px;
    max-width: 400px;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
  }

  .hero .hero-card h3 {
    margin: 0 0 20px 0;
    font-size: 28px;
    color: #1a1a1a;
  }

  .hero .hero-card p {
    margin: 0 0 24px 0;
    font-size: 16px;
    line-height: 1.6;
    color: #333;
  }

  .hero .cta-button {
    padding: 12px 28px;
    background: #005ea2;
    color: white;
    border: none;
    font-weight: 600;
    cursor: pointer;
    font-size: 16px;
  }

  .hero .cta-button:hover {
    background: #004a82;
  }

  /* Bitcoin Address Section */
  .btc-address-section {
    max-width: 600px;
    margin: 0 auto 40px;
    padding: 24px;
    background: #f8f9fa;
    border-radius: 8px;
    border: 1px solid #e5e5e5;
  }

  .btc-label {
    display: block;
    font-size: 12px;
    font-weight: 600;
    color: #666;
    text-transform: uppercase;
    letter-spacing: 0.5px;
    margin-bottom: 12px;
  }

  .btc-address {
    width: 100%;
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 12px;
    padding: 14px 18px;
    background: white;
    border: 2px solid #d1d5db;
    border-radius: 6px;
    cursor: pointer;
    transition: all 0.2s ease;
    font-family: 'Courier New', monospace;
  }

  .btc-address:hover {
    background: #f0f9ff;
    border-color: #005ea2;
  }

  .btc-address:active {
    transform: scale(0.98);
  }

  .btc-text {
    flex: 1;
    font-size: 13px;
    color: #1a1a1a;
    word-break: break-all;
    text-align: left;
    line-height: 1.5;
  }

  .copy-icon {
    flex-shrink: 0;
    font-size: 20px;
    opacity: 0.6;
    transition: opacity 0.2s ease;
  }

  .btc-address:hover .copy-icon {
    opacity: 1;
  }

  .copy-feedback {
    display: block;
    margin-top: 12px;
    font-size: 13px;
    color: #10b981;
    font-weight: 600;
    text-align: center;
    animation: fadeIn 0.2s ease;
  }

  @keyframes fadeIn {
    from {
      opacity: 0;
      transform: translateY(-4px);
    }
    to {
      opacity: 1;
      transform: translateY(0);
    }
  }

  .hero .hero-image {
    flex: 1;
    display: flex;
    justify-content: flex-end;
    align-items: center;
  }

  /* Main Content */
  .main-content {
    flex: 1;
    padding: 40px 0;
    background: white;
  }

  /* News Section */
  .news-section {
    background: #1a1a1a;
    color: white;
    padding: 60px 0;
    text-align: center;
  }

  .news-section h2 {
    font-size: 36px;
    margin: 0;
    font-weight: 400;
  }

  /* Responsive */
  @media (max-width: 968px) {
    .site-header .header-content {
      flex-direction: column;
      align-items: flex-start;
    }

    .site-header .header-right {
      width: 100%;
      align-items: stretch;
    }

    .hero .hero-content {
      flex-direction: column;
    }

    .hero .hero-card {
      max-width: 100%;
    }

    .main-nav .container {
      flex-direction: column;
    }

    .main-nav .nav-link {
      border-right: none;
      border-bottom: 1px solid #333;
    }

    .btc-address-section {
      padding: 16px;
    }

    .btc-text {
      font-size: 11px;
    }
  }
</style>