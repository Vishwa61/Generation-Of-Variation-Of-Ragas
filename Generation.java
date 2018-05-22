package generation;
import org.jfugue.player.Player;
import java.io.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.*;
import java.util.*;

public class Generation implements ActionListener  {
    public String song = "";
    public String s = "";
    public String dur = "";
    int lengths;
    int length_dur;
    //int s;
    
  public void generation(String s) {
      String fileName = "";
      String filename = "";
    if(s=="Bhupali")
    {   fileName = "MyFile_bhoop.txt";
        filename = "bhoop_dur.txt";
    }
    else if(s=="Vrundavani Sarang")
    {   filename = "vrundavani_dur.txt";
        fileName = "MyFile_vrundavani.txt";
    }
    else if(s=="Jaijaivanti")
    {   filename= "jaijaivanti_dur.txt";
        fileName= "MyFile_jaijaivanti.txt";
    }
    else if(s=="Darbari Kanada")
    {   filename="darbari_dur.txt";
        fileName="MyFile_darbari.txt";
    }
    else if(s=="Bihag")
    {   filename="bihag_dur.txt";
        fileName="MyFile_bihag.txt";  
    }
    
        
        // This will reference one line at a time
        String line = null;
        String line_d = null;
        try {
            // FileReader reads text files in the default encoding.
            FileReader fileReader = new FileReader(fileName);
            FileReader fileReader1 = new FileReader(filename);
            // Always wrap FileReader in BufferedReader.
            BufferedReader bufferedReader = 
                new BufferedReader(fileReader);
            BufferedReader bufferedReader1 = 
                new BufferedReader(fileReader1);

            
            while((line = bufferedReader.readLine()) != null) {
                song = song.concat(line);
                //System.out.println(song);
            }  
            
            while((line_d = bufferedReader1.readLine()) != null) {
                dur = dur.concat(line_d);
                //System.out.println(dur);
            }   
            bufferedReader1.close();
            // Always close files.
            bufferedReader.close();         
        }
        catch(FileNotFoundException ex) {
            System.out.println(
                "Unable to open file '" + 
                fileName + "'");                
        }
        catch(IOException ex) {
            System.out.println(
                "Error reading file '" 
                + fileName + "'");                  
            // Or we could just do this: 
            // ex.printStackTrace();
        }
         
         String[] charsong = song.split(" ");
         String[] chardur = dur.split(" ");
         lengths = charsong.length;
         length_dur = chardur.length;
         String[] fsong = new String[lengths]; 
         System.out.println("song =" + Arrays.toString(charsong));
         System.out.println("dur =" + Arrays.toString(chardur));
         System.out.println(lengths +" " + length_dur);
        int j=0;  
        for(int i=0;i<lengths;i++)
        {       if(i==0)
                    fsong[i]=charsong[i];
                else if(i==1)
                    fsong[i]=charsong[i];
               else
                {fsong[i] = charsong[i] + '/' + chardur[j];
                    j++;}
        }
        /*String[] disp = {"C2","D2","E2","F2","G2","A2","B2","C3","D3","E3","F3","G3","A3","B3","C4","D4","E4","F4","G4","A4","B4","Db2","Eb2","F#2","G#2","Bb2","Db3","Eb3","F#3","G#3","Bb3","Db4","Eb4","F#4","G#4","Bb4"};
        String[] classdisp = {".Sa",".Re",".Ga",".Ma",".Pa",".Dha",".Ni","Sa","Re","Ga","Ma","Pa","Dha","Ni","Sa'","Re'","Ga'","Ma'","Pa'","Dha'","Ni'",".Re_",".Ga_",".Ma_",".Pa_","Ni_","Re_","Ga_","Ma_","Pa_","Ni_","Re_'","Ga_'","Ma_'","Pa_'","Ni_'"};
        for(int i=0;i<lengths;i++)
        {
            for(int l=0;l<disp.length;l++)
            {
                
                    if(charsong[i]==disp[l])
                    {
                        charsongl[i]=classdisp[l];
                    }
            }
        }
        System.out.println(disp.length);
        System.out.println(charsong);
        System.out.println(classdisp.length);
        */
        
        System.out.println(Arrays.toString(fsong)); 
        System.out.println("song"+lengths);
        System.out.println("dur"+length_dur);
        Player player = new Player();
      
    player.play(fsong);
  }
   
    JButton okbutton;
    JFrame guiFrame;
    JLabel lbltitle;
    JComboBox ragas;
    public void gui_m()
    {
        guiFrame = new JFrame();
        guiFrame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        guiFrame.setTitle("Generation Of Ragas");
        guiFrame.setSize(500,250);
        guiFrame.setLayout(new GridLayout(3,1));
        guiFrame.setLocationRelativeTo(null);
       
        String[] ragaOptions = {"Bhupali","Jaijaivanti","Vrundavani Sarang","Darbari Kanada","Bihag"};
       
        JPanel panel3 = new JPanel();
	panel3.setBackground(Color.LIGHT_GRAY);
        lbltitle = new JLabel("Variation In Ragas");
        lbltitle.setFont(new Font("Courier New",Font.BOLD,30));
        lbltitle.setForeground(Color.BLACK);
        panel3.add(lbltitle,BorderLayout.CENTER);
     
        JPanel panel1 = new JPanel();
	panel1.setBackground(Color.LIGHT_GRAY);
        
        JPanel panel2 = new JPanel();
	panel2.setBackground(Color.LIGHT_GRAY);
        
        final JPanel comboPanel = new JPanel();
        JLabel comboLbl = new JLabel("Select the raga:");
        ragas = new JComboBox(ragaOptions);
        comboPanel.add(comboLbl);
        comboPanel.add(ragas);
        okbutton = new JButton( "Generate");
        okbutton.setSize(10, 20);
        
        
        
        panel1.add(comboPanel);
        panel2.add(okbutton);
        guiFrame.setVisible(true);
        guiFrame.add(panel3);
	guiFrame.add(panel1);
        guiFrame.add(panel2);
        
        
        okbutton.addActionListener(this);
        ragas.addActionListener(this);
        
    }
    
    public static void main(String[] args)
    {
        Generation obj = new Generation();
        obj.gui_m();
    }
    public void actionPerformed(ActionEvent e) {
        if(okbutton.getText().equals(e.getActionCommand()))
               {    
                   Generation obj1 = new Generation();
                   obj1.generation(s);
                   
               }
        if (ragas.getSelectedItem() != null) {
            s = ragas.getSelectedItem().toString();
            //System.out.println(s);
        }
    }
}
