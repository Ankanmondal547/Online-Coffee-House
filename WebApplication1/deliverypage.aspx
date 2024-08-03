<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="deliverypage.aspx.cs" Inherits="WebApplication1.deliverypage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        @import url("https://rsms.me/inter/inter.css");

:root {
  --color-gray: #737888;
  --color-lighter-gray: #e3e5ed;
  --color-light-gray: #f7f7fa;
}

*,
*:before,
*:after {
  box-sizing: inherit;
}

html {
  font-family: "Inter", sans-serif;
  font-size: 12px;
  box-sizing: border-box;
}

@supports (font-variation-settings: normal) {
  html {
    font-family: "Inter var", sans-serif;
  }
}

body {
  margin: 0;
}

h1 {
  margin-bottom: 1rem;
}

p {
  color: var(--color-gray);
}

hr {
  height: 1px;
  width: 100%;
  background-color: var(--color-light-gray);
  border: 0;
  margin: 2rem 0;
}

.container {
  background-color: whitesmoke;
  max-width: 40rem;
  padding: 10vw 2rem 0;
  margin: 0 auto;
  height: 100vh;
}

.form {
  display: grid;
  grid-gap: 1rem;
}

.field {
  width: 100%;
  display: flex;
  flex-direction: column;
  border: 1px solid var(--color-lighter-gray);
  padding: .5rem;
  border-radius: .25rem;
}

.field__label {
  color: var(--color-gray);
  font-size: 0.6rem;
  font-weight: 300;
  text-transform: uppercase;
  margin-bottom: 0.25rem
}

.field__input {
  padding: 0;
  margin: 0;
  border: 0;
  outline: 0;
  font-weight: bold;
  font-size: 1rem;
  width: 100%;
  -webkit-appearance: none;
  appearance: none;
  background-color: transparent;
}
.field:focus-within {
  border-color: #000;
}

.fields {
  display: grid;
  grid-gap: 1rem;
}
.fields--2 {
  grid-template-columns: 1fr 1fr;
}
.fields--3 {
  grid-template-columns: 1fr 1fr 1fr;
}

.button {
  background-color: #000;
  text-transform: uppercase;
  font-size: 0.8rem;
  font-weight: 600;
  display: block;
  color: #fff;
  width: 100%;
  padding: 1rem;
  border-radius: 0.25rem;
  border: 0;
  cursor: pointer;
  outline: 0;
}
.button:focus-visible {
  background-color: #333;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
  <h1>Shipping</h1>
  <p>Please enter your shipping details.</p>
  <hr />
  <div class="form">
    
  <div class="fields fields--2">
    <label class="field">
      <span class="field__label" for="firstname">First name</span>
        <asp:TextBox class="field__input" type="text" id="firstname" value="ankan" runat="server"></asp:TextBox>
    </label>
    <label class="field">
      <span class="field__label" for="lastname">Last name</span>
        <asp:TextBox class="field__input" type="text" id="lastname" value="Mondal" runat="server"></asp:TextBox>
    </label>
  </div>
  <label class="field">
    <span class="field__label" for="address">Address</span>
      <asp:TextBox  class="field__input" type="text" id="address" runat="server"></asp:TextBox>
  </label>
  <label class="field">
    <span class="field__label" for="country">Country</span>
    <select class="field__input" id="country">
      <option value=""></option>
      <option value="India">India</option>
      <option value="unitedstates">United States</option>

    </select>
  </label>
  <div class="fields fields--3">
    <label class="field">
      <span class="field__label" for="zipcode">Zip code</span>
        <asp:TextBox  class="field__input" type="text" id="zipcode"  runat="server"></asp:TextBox>
    </label>
    <label class="field">
      <span class="field__label" for="city">City</span>
        <asp:TextBox class="field__input" type="text" id="city" runat="server"></asp:TextBox>
    </label>
    <label class="field">
      <span class="field__label" for="state">State</span>
      <select class="field__input" id="state">
        <option value="Delhi">Delhi</option>
        <option value="West Bengal">West Bengal</option>
        <option value="Goa">Goa</option>
      </select>
    </label>
  </div>
  </div>
  <hr>
<%--  <button >Continue</button>--%>
        <asp:Button ID="Button1" class="button" runat="server" Text="Button" OnClick="Button1_Click" />
</div>
</asp:Content>
