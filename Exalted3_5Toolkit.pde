public enum Type 
{
  ATTRIBUTE, ABILITY, WILLPOWER, ESSENCE
}
public enum Page
{
  ATTRIBUTES, ABILITIES, MERITS, CHARMS
}

Page page;
StatLine[] attributes;
StatLine[] abilities;
Button[] buttons;
TextBox[] globalTexts;
TextBox[] meritTexts;
PImage bg;
void setup()
{
  textAlign(CENTER);
  size(1200, 800);
  setupButtons();
  setupAttributes();
  setupAbilities();
  setupglobalTexts();
  page = Page.ATTRIBUTES;
  bg = loadImage("Images/gold_lightning4.jpg");
}

void draw()
{
  background(bg);
  for(int i = 0; i < buttons.length; i++)
  {
    buttons[i].draw();
  }
  for(int i = 0; i < globalTexts.length; i++)
  {
    globalTexts[i].draw();
  }
  if(page == Page.ATTRIBUTES)
  {
    for(int i = 0; i < attributes.length; i++)
      attributes[i].draw();
  }
  else if(page == Page.ABILITIES)
    for(int i = 0; i < abilities.length; i++)
        abilities[i].draw();
  else if (page == Page.MERITS)
  {
    
  }
}

void keyPressed()
{
  for(int i = 0; i < globalTexts.length; i++)
  {
    if(globalTexts[i].active) globalTexts[i].keyPressed();
  }
}

void mousePressed()
{
  for(int i = 0; i < buttons.length; i++)
    if(buttons[i].overButton()) page = buttons[i].page;
  for(int i = 0; i < globalTexts.length; i++)
    if(globalTexts[i].overBox()) globalTexts[i].swapActive();
  if(page == Page.ATTRIBUTES)
  {
    for(int i = 0; i < attributes.length; i++)
      attributes[i].mousePressed();
  }
  else if(page == Page.ABILITIES)
  {
    for(int i = 0; i < abilities.length; i++)
      abilities[i].mousePressed();
  }
}

void setupButtons()
{
  buttons = new Button[4];
  buttons[0] = new Button(25, 25, "Attributes", Page.ATTRIBUTES);
  buttons[1] = new Button(25, 100, "Abilities", Page.ABILITIES);
  buttons[2] = new Button(25, 175, "Merits", Page.MERITS);
  buttons[3] = new Button(25, 250, "Charms", Page.CHARMS);
}

void setupAttributes()
{
    attributes = new StatLine[11];
    attributes[0] = new StatLine(400, 100, Type.ATTRIBUTE, "Strength", 1);
    attributes[1] = new StatLine(400, 125, Type.ATTRIBUTE, "Dexterity", 1);
    attributes[2] = new StatLine(400, 150, Type.ATTRIBUTE, "Stamina", 1);
    attributes[3] = new StatLine(400, 200, Type.ATTRIBUTE, "Charisma", 1);
    attributes[4] = new StatLine(400, 225, Type.ATTRIBUTE, "Manipulation", 1);
    attributes[5] = new StatLine(400, 250, Type.ATTRIBUTE, "Appearance", 1);
    attributes[6] = new StatLine(400, 300, Type.ATTRIBUTE, "Perception", 1);
    attributes[7] = new StatLine(400, 325, Type.ATTRIBUTE, "Intelligence", 1);
    attributes[8] = new StatLine(400, 350, Type.ATTRIBUTE, "Wits", 1);
    
    attributes[9] = new StatLine(400, 400, Type.ESSENCE, "Essence", 1);
    attributes[10] = new StatLine(400, 450, Type.WILLPOWER, "Willpower", 5);
}

void setupAbilities()
{
    abilities = new StatLine[25];
    abilities[0] = new StatLine(400, 100, Type.ABILITY, "Archery", 0);
    abilities[1] = new StatLine(400, 125, Type.ABILITY, "Martial Arts", 0);
    abilities[2] = new StatLine(400, 150, Type.ABILITY, "Melee", 0);
    abilities[3] = new StatLine(400, 175, Type.ABILITY, "War", 0);
    abilities[4] = new StatLine(400, 200, Type.ABILITY, "Thrown", 0);
    abilities[5] = new StatLine(400, 225, Type.ABILITY, "Beuracracy", 0);    
    abilities[6] = new StatLine(400, 250, Type.ABILITY, "Linguistics", 0);
    abilities[7] = new StatLine(400, 275, Type.ABILITY, "Ride", 0);
    abilities[8] = new StatLine(400, 300, Type.ABILITY, "Sail", 0);
    abilities[9] = new StatLine(400, 325, Type.ABILITY, "Socialize", 0);
    abilities[10] = new StatLine(400, 350, Type.ABILITY, "Athletics", 0);
    abilities[11] = new StatLine(400, 375, Type.ABILITY, "Awareness", 0);
    abilities[12] = new StatLine(400, 400, Type.ABILITY, "Dodge", 0);
    abilities[13] = new StatLine(400, 425, Type.ABILITY, "Larceny", 0);
    abilities[14] = new StatLine(400, 450, Type.ABILITY, "Stealth", 0);
    abilities[15] = new StatLine(400, 475, Type.ABILITY, "Craft", 0);    
    abilities[16] = new StatLine(400, 500, Type.ABILITY, "Lore", 0);
    abilities[17] = new StatLine(400, 525, Type.ABILITY, "Occult", 0);
    abilities[18] = new StatLine(400, 550, Type.ABILITY, "Medicine", 0);
    abilities[19] = new StatLine(400, 575, Type.ABILITY, "Investigation", 0);
    abilities[20] = new StatLine(400, 600, Type.ABILITY, "Integrity", 0);    
    abilities[21] = new StatLine(400, 625, Type.ABILITY, "Performance", 0);
    abilities[22] = new StatLine(400, 650, Type.ABILITY, "Presence", 0);
    abilities[23] = new StatLine(400, 675, Type.ABILITY, "Resistance", 0);
    abilities[24] = new StatLine(400, 700, Type.ABILITY, "Survival", 0);
    
}

void setupglobalTexts()
{
    globalTexts = new TextBox[1];
    globalTexts[0] = new TextBox(200, 25, "Character Name");
}