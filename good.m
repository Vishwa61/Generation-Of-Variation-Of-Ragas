%x=[3 3 2 3 5 3 5 5 6 5 3 2 3 2 1 1 1 3 2 3 2 1 6 5 1 6 1 5 1 6 1 1 2 3 2 3 5 3 1 1 2 3 1 2 3 5 2 3 3 2 5 3 5 5 6 1 6 5 2 3 5 3 3 2 1 1 1 2 3 5 6 1 6 1 6 5 5 2 3 2 1 2 3 2 3 2 1 2 1 2 3 2 5 3 3 5 1 6 8 1 6 1 2 3 2 8 8 6 1 6 5 5 3 3 5 3 5 3 2 3 5 6 2 8];
%x1=[1 2 3 4 3 3 5 4 3 2 1 2 7 2 1];
note_bhoop=["C3" "D3" "E3" "G3" "A3" "C4" "D4" "E4" "R"];
note_jai=["A2" "B2" "Bb2" "C3" "D3" "E3" "Eb3" "F3" "G3" "A3" "Bb3" "B3" "C4" "D4" "Eb4" "B4" "R"];
time_bhoop=[0.2 0.3 0.2 0.7 0.3 0.2 0.3 0.2 0.3];
note_vrundavani=["B2" "C3" "D3" "F3" "G3" "F3" "G3" "Bb3" "Bb2" "B3" "C4" "D4" "F4" "R"];
note_bihag=["B2" "C3" "E3" "F3" "G3" "B3" "C4" "A3" "F#3" "D3" "R"];
note_darbari=["Bb2" "C3" "D3" "Eb3" "F3" "G3" "Ab3" "Bb3" "C4" "R"];

bhoop=["E3" "E3" "D3" "E3" "G3" "E3" "G3" "G3" "A3" "G3" "E3" "D3" "E3" "D3" "C3" "C3" "C3" "E3" "D3" "E3" "D3" "C3" "A3" "G3" "C3" "A3" "C3" "G3" "C3" "A3" "C3" "C3" "D3" "E3" "D3" "E3" "G3" "E3" "C3" "C3" "D3" "E3" "C3" "D3" "E3" "C3" "D3" "E3" "E3" "D3" "G3" "E3" "G3" "G3" "A3" "C3" "A3" "G3" "D3" "E3" "G3" "E3" "E3" "D3" "C3" "C3" "C3" "D3" "E3" "G3" "A3" "C3" "A3" "C3" "A3" "G3" "E3" "D3" "E3" "D3" "C3" "D3" "E3" "D3" "E3" "D3" "C3" "D3" "C3" "D3" "E3" "D3" "G3" "E3" "E3" "G3" "C3" "A3" "C4" "C3" "A3" "C3" "D3" "E4" "D4" "C4" "C4" "A3" "C3" "A3" "G3" "G3" "E3" "E3" "G3" "E3" "G3" "E3" "D3" "E3" "G3" "E3" "D3" "C3"];
jai=["C3" "A2" "B2" "B3" "C3" "A2" "B2" "D3" "D3" "C3" "D3" "Eb3" "D3" "C3" "A2" "Bb2" "C3" "D3" "E3" "F3" "F3" "Eb3" "D3" "C3" "D3" "E3" "F3" "G3" "A3" "F3" "Eb3" "D3" "Eb3" "D3" "C3" "G3" "A3" "F3" "Eb3" "B3" "F3" "G3" "D3" "Eb3" "F3" "G3" "B3" "A3" "G3" "F3" "G3" "Bb3" "A3" "G3" "Eb3" "F3" "A3" "Bb3" "A3" "F3" "G3" "A3" "Bb3" "A3" "G3" "D3" "Eb3" "F3" "G3" "F3" "G3" "Bb3" "A3" "G3" "A3" "F3" "Eb3" "D3" "Eb3" "D3" "C3" "Eb3" "F3" "A3" "B3" "C4" "D4" "C4" "A3" "Bb3" "D4" "B4" "Eb4" "D4" "C4" "C4" "C4" "Bb3" "A3" "G3" "Bb3" "A3" "G3" "A3" "F3" "Eb3" "B3" "Eb3" "D3" "C3"];
vrund=["D3" "F3" "G3"  "B3" "C4" "C4" "C4" "C4" "R" "C4" "Bb3" "G3" "F3" "C4" "Bb3" "G3" "F3" "D3" "C3" "Bb3" "Bb3" "F3" "G3" "R" "Bb3" "Bb3" "G3" "F3" "D3" "D3" "D3" "D3" "B2" "C3" "C3" "C3" "C3" "C3" "D3" "C3" "Bb2" "D3" "D3" "D3" "G3" "F3" "D3" "D3" "C3" "C3" "F3" "F3" "F3" "F3" "Bb3" "Bb3" "F3" "G3" "G3" "Bb3" "C4" "C4" "C4" "D4" "B3" "C4" "C4" "B3" "B3" "C4" "R" "Bb3" "Bb3" "G3" "G3" "G3" "B3" "C4" "C4" "C4" "R" "F3" "G3" "Bb3" "Bb3" "D3" "F3" "G3" "F3" "G3" "G3" "C3" "D3" "F3" "D3" "F3" "F3" "Bb3" "Bb3" "F3" "G3" "R" "Bb3" "Bb3" "G3" "F3" "D3" "D3" "D3" "B2" "C3" "C3" "C3" "C3"];
bihag=["E3" "F3" "G3" "B3" "C4" "B3" "A3" "G3" "F3" "G3" "E3" "F3" "R" "E3" "E3" "E3" "G3" "F3" "E3" "F3" "F3" "E3" "C3" "B2" "C3" "E3" "F3" "E3" "F3" "G3" "F3" "E3" "F3" "G3" "A3"  "E3" "F3" "E3" "E3" "D3" "C3" "B2" "C3" "E3" "F3" "G3" "B3" "C4" "B3" "C4" "C4" "R" "G3" "B3" "C4" "E4" "D4" "B3" "C4" "C4" "C4" "C4" "D4" "C4" "B3" "C4" "G3" "G3" "A3" "G3" "F3" "G3" "E3" "E3" "F3" "G3" "F3" "E3" "E3" "D3" "C3" "B2" "C3"];
darbari=[];
no_of_notes=input('Enter number of notes to be generated');
raag=input('Enter 1. for Bhoop, 2 for jaijaivanti, 3 for vrundavani sarang, 4 for Darbari, 5 for Bihag');
if raag==1
    x=bhoop;
    note=note_bhoop;
    filename1='bhoop_dur.txt';
    filename='MyFile_bhoop.txt';
elseif raag ==2
    x=jai;
    note=note_jai;
    filename='MyFile_jaijaivanti.txt';
elseif raag ==3
    x=vrund;
    note=note_vrundavani;
    filename='MyFile_vrundavani.txt';
elseif raag ==4
    x=darbari;
    note=note_darbari;
    filename= 'MyFile_darbari';
elseif raag ==5
    x=bihag;
    note=note_bihag;
    filename= 'MyFile_Bihag';
end  

%Conversion of notation to numbers for bhoop raag
for i=1:length(x)
    for j=1:length(note)
        if x(i)==note(j)
            x(i)=j;
        end    
    end
end

x1=str2double(x);
disp(x1);
[song, duration]=Hmm(x1,no_of_notes);
disp(time_bhoop(song));
fid=fopen(filename,'w');
fid1=fopen(filename1,'w');
 for i=1:length(song)
     for j=1:length(note)
        if song(i)== j
           fprintf(fid, '%s ',note(j));
        end    
     end 
     
     fprintf(fid1,'%f',time_bhoop(song(i)));
     
 end
    fclose(fid);                                                                                                                                                                                                                           
    fclose(fid1);                                                                                                                                                                                                                                                                             