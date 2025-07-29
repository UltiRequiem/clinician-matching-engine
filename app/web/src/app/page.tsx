import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";
import PatientForm from "@/components/PatientForm";

export default function Home() {
  return (
    <div className="bg-[#fffced] min-h-screen overflow-hidden">
      <header>
        <h1 className="text-6xl text-center m-5 font-bold font-serif text-[#43635f]">
          Find your perfect clinician
        </h1>
        <p className="text-center text-lg mb-5 text-[#43635f]">
          Tell us about your preferences and we will match you with the most
          suitable clinician.
        </p>
      </header>
      <main>
        <Card className="m-10">
          <CardHeader>
            <CardTitle className="text-3xl">Patient intake form</CardTitle>
            <CardDescription>
              Help us understand your needs to find the most suitable clinician
              for you.
            </CardDescription>
          </CardHeader>
          <CardContent>
            <PatientForm />
          </CardContent>
        </Card>
      </main>
    </div>
  );
}
