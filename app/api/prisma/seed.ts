// import { PrismaClient } from '@prisma/client';
// import { PrismaLibSQL } from '@prisma/adapter-libsql';

// const adapter = new PrismaLibSQL({
//   url: process.env.TURSO_DATABASE_URL!,
//   authToken: process.env.TURSO_AUTH_TOKEN!,
// });

// const prisma = new PrismaClient({ adapter });

import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();

async function main() {
  console.log('Seeding database...');

  const _patient = await prisma.patient.create({
    data: {
      state: 'CA',
      language: 'Spanish',
      genderPreference: 'female',
      insuranceProvider: 'BlueCross',
      appointmentType: 'therapy',
      urgencyLevel: 'immediate',
      clinicalNeeds: {
        create: [{ need: 'anxiety' }, { need: 'trauma' }],
      },
      preferredTimeSlots: {
        create: [{ slot: 'morning' }, { slot: 'evening' }],
      },
    },
  });

  // Create clinicians
  await prisma.clinician.create({
    data: {
      fullName: 'Dr. Ana Torres',
      gender: 'female',
      isAvailableNow: true,
      matchCount: 3,
      statesLicensed: {
        create: [{ state: 'CA' }],
      },
      languagesSpoken: {
        create: [{ language: 'Spanish' }],
      },
      insurancesAccepted: {
        create: [{ insurance: 'BlueCross' }],
      },
      appointmentTypes: {
        create: [{ type: 'therapy' }],
      },
      clinicalSpecialties: {
        create: [{ need: 'anxiety' }, { need: 'trauma' }],
      },
      availableTimeSlots: {
        create: [{ slot: 'morning' }, { slot: 'afternoon' }],
      },
    },
  });

  await prisma.clinician.create({
    data: {
      fullName: 'Dr. John Smith',
      gender: 'male',
      isAvailableNow: false,
      matchCount: 1,
      statesLicensed: {
        create: [{ state: 'CA' }],
      },
      languagesSpoken: {
        create: [{ language: 'English' }],
      },
      insurancesAccepted: {
        create: [{ insurance: 'BlueCross' }],
      },
      appointmentTypes: {
        create: [{ type: 'therapy' }],
      },
      clinicalSpecialties: {
        create: [{ need: 'anxiety' }, { need: 'depression' }],
      },
      availableTimeSlots: {
        create: [{ slot: 'evening' }],
      },
    },
  });

  console.log('✅ Seed completed.');
}

main()
  .catch((e) => {
    console.error('❌ Error seeding:', e);
    process.exit(1);
  })
  .finally(() => {
    prisma.$disconnect().catch(console.error);
  });
